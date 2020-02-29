class Weather_area
  def prefectures(pref)
    if pref == '北海道'
      pref = '北海道'
      message = {
        type: 'text',
        text: '北海道'
      }
    elsif pref == '東京都'
      pref = '東京都'
      message = {
        type: 'text',
        text: '東京都'
      }
    elsif pref == '兵庫県'
      # pref = '兵庫県'
      # message = {
      #   type: 'text',
      #   text: '兵庫県'
      # }
      template_city = {
        "type": "template",
        "altText": "this is a buttons template",
        "template": {
            "type": "buttons",
            "text": "メニューを選んで下さい",
            "actions": [
                {
                  "type": "message",
                  # Botから送られてきたメッセージに表示される文字列です。
                  "label": "神戸市",
                  # ボタンを押した時にBotに送られる文字列です。
                  "text": "神戸市"
                },
                {
                  "type": "message",
                  "label": "豊岡市",
                  "text": "豊岡市"
                }
            ]
        }
      }
    else
      pref = "都道府県を送信して下さい。\n記入例：北海道、東京都、兵庫県など"
      message = {
        type: 'text',
        text: "都道府県を送信して下さい。\n記入例：北海道、東京都、兵庫県など"
      }
    end
  end
end


