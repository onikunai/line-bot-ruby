require 'sinatra'
require 'line/bot'

menu_index = ""

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

#テンプレートは、max4つ
def template_menu
  {
    "type": "template",
    "altText": "this is a buttons template",
    "template": {
        "type": "buttons",
        "text": "メニューを選んで下さい",
        "actions": [
            {
              "type": "message",
              # Botから送られてきたメッセージに表示される文字列です。
              "label": "天気が知りたい",
              # ボタンを押した時にBotに送られる文字列です。
              "text": "天気モード"
            },
            {
              "type": "message",
              "label": "オウム返しモード",
              "text": "オウム返しモード"
            }
        ]
    }
  }
end

# うまくいった
# class Weather_area
#   def template_prefectures1
#     {
#       "type": "template",
#       "altText": "this is a buttons template",
#       "template": {
#           "type": "buttons",
#           "text": "都道府県を選んで下さい",
#           "actions": [
#               {
#                 "type": "message",
#                 # Botから送られてきたメッセージに表示される文字列です。
#                 "label": "北海道",
#                 # ボタンを押した時にBotに送られる文字列です。
#                 "text": "北海道"
#               },
#               {
#                 "type": "message",
#                 "label": "アキバ",
#                 "text": "アキバ"
#               }
#           ]
#       }
#     }
#   end
# end

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
        # オウム返しモード
        if menu_index == "オウム返し"
          if event.message['text'] == 'また明日'
            menu_index = ""
            client.reply_message(event['replyToken'],   message = {
              type: 'text',
              text: 'オウム返しモードを終了します'
            })
          else
            client.reply_message(event['replyToken'],   message = {
              type: 'text',
              text: event.message['text']
            })
          end
        # 天気モード
        elsif menu_index == "天気"
          # case event.message['text']
          #   when "次へ1"
          #     client.reply_message(event['replyToken'], message = {
          #       type: 'text',
          #       text: "次へ1は、終わり"
          #     })
          # end
          menu_index = ""
          # require './app/weather/area'
          # weather_area = Weather_area.new
          # temp_pref = weather_area.template_prefectures1
          # client.reply_message(event['replyToken'], template = temp_pref)
          # うまくいった
          # client.reply_message(event['replyToken'], template = template_prefectures1)
        # menu_index選び
        else
          # 天気:template_prefectures1
          if event.message['text'] == '天気モード'
            menu_index = "天気"
            # require './app/weather/area'
            # weather_area = Weather_area.new
            # template_prefectures1 = weather_area.template_prefectures1
            # client.reply_message(event['replyToken'], template = template_prefectures1)
            require './app/weather/area'
            weather_area = Weather_area.new
            temp_pref = weather_area.template_prefectures1
            client.reply_message(event['replyToken'], template = temp_pref)
          # オウム返しモード開始
          elsif event.message['text'] == 'オウム返しモード'
            menu_index = "オウム返し"
            client.reply_message(event['replyToken'], message = {
              type: 'text',
              text: "オウム返しモードを開始します。\n終了するには、「また明日」と送信して下さい"
            })
          #メニュー表示
          else
            menu_index = ""
            client.reply_message(event['replyToken'], template = template_menu)
          end
        end
      # メッセージ以外の対応
      else
        menu_index = ""
        client.reply_message(event['replyToken'], message = {
          type: 'text',
          text: "メッセージのみ対応しています"
        })
      end
    end

  }

  "OK"
end