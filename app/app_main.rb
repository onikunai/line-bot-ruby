# 参照ライブラリ
require 'sinatra'
require 'line/bot'

# 参照ファイル
require './app/0form/template'

# 宣言
menu_index = ""
pref = ""
pref_flag = ""
city = ""
city_flag = ""
form = Form.new

# 微小変更部分！確認用。
get '/' do
  "Hello world"
end

def client
  @client ||= Line::Bot::Client.new { |config|
    config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
    config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
  }
end

post '/callback' do
  body = request.body.read

  signature = request.env['HTTP_X_LINE_SIGNATURE']
  unless client.validate_signature(body, signature)
    error 400 do 'Bad Request' end
  end

  events = client.parse_events_from(body)
  events.each { |event|
    case event
    when Line::Bot::Event::Message
      case event.type
      when Line::Bot::Event::MessageType::Text
        # 天気モード
        if menu_index == '天気'
          # menu_index = ''

          if city == '入力済み'
            city = event.message['text']
          end
          if city == '' || city == '次へ' || city == '道北' || city == '道東' || city == '道央' || city == '道南'
            if city == '' then
              pref_flag = event.message['text']
            else city == '道北' || city == '道東' || city == '道央' || city == '道南'
              pref_flag = city
            end
            # pref_flag = pref 
          
            # 確認用
            # if city_flag == '入力済み' then
            #   client.reply_message(event['replyToken'], message = {
            #     type: 'text',
            #     text: pref,
            #   })
            # end
            # -----------------------------------

            
            require './app/weather/area'
            weather_area = Weather_area.new
            area_template = weather_area.prefectures(pref_flag, city)
            template = area_template.template
            client.reply_message(event['replyToken'], template)
            city = '入力済み'
            pref_flag = area_template.pref_flag

            # # 確認用
            # message = weather_area.prefectures(pref)
            # client.reply_message(event['replyToken'], message)
            # # -----------------------------------

          # 天気を表示
          else 
            # 判定フラグに代入
            # menu_indexの初期化
            menu_index = ""
            #----------------------------
            require './app/weather/app_weather'
            weather_say = Weather_say.new
            message = weather_say.message(city)
            client.reply_message(event['replyToken'], message)

          end

        # オウム返しモード
        elsif menu_index == "オウム返し"
          if event.message['text'] == 'また明日'
            menu_index = ""
            client.reply_message(event['replyToken'], message = {
              type: 'text',
              text: 'オウム返しモードを終了します'
            })
          else
            client.reply_message(event['replyToken'], message = {
              type: 'text',
              text: event.message['text']
            })
          end

        # menu_index選び
        else
          # 天気:template_prefectures1
          if event.message['text'] == '天気モード'
            # 判定フラグに代入
            menu_index = '天気'
            city = ''
            city_flag = ''
            #----------------------------
            client.reply_message(event['replyToken'], message = {
              type: 'text',
              text: "都道府県を送信して下さい。\n例：東京、大阪、兵庫、道中など"
            })

          # オウム返しモード開始
          elsif event.message['text'] == 'オウム返しモード'
            # 判定フラグに代入
            menu_index = 'オウム返し'
            #----------------------------
            client.reply_message(event['replyToken'], message = {
              type: 'text',
              text: "オウム返しモードを開始します。\n終了するには、「また明日」と送信して下さい"
            })

          #メニュー表示
          else
            # 判定フラグに代入
            menu_index = ''
            #----------------------------
            title = "メニューを選んで下さい"
            text1 = "天気モード"
            text2 = "オウム返しモード"
            # text3 = ""
            # text4 = ""
            # form = Form.new
            template = form.template(title, text1, text2)
            client.reply_message(event['replyToken'], template)
          end
        end

      # メッセージ以外の対応
      else
        # 判定フラグに代入
        menu_index = ''
        #----------------------------
        client.reply_message(event['replyToken'], message = {
          type: 'text',
          text: "メッセージのみ対応しています"
        })
      end
    end

  }

  "OK"
end