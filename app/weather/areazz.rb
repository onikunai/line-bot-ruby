# class Weather_area
#   def template_prefectures1
#     {
#       "type": "template",
#       "altText": "this is a buttons template",
#       "template": {
#           "type": "buttons",
#           "text": "都道府県を選んで下さい",
#           "actions": [
#             {
#               "type": "message",
#               # Botから送られてきたメッセージに表示される文字列です。
#               "label": "北海道",
#               # ボタンを押した時にBotに送られる文字列です。
#               "text": "北海道"
#             },
#             {
#               "type": "message",
#               "label": "",
#               "text": "青森県"
#             },
#             {
#               "type": "message",
#               "label": "",
#               "text": "岩手県"
#             },
#             {
#               "type": "message",
#               "label": "宮城県",
#               "text": ""
#             },
#             {
#               "type": "message",
#               "label": "秋田県",
#               "text": ""
#             },
#             {
#               "type": "message",
#               "label": "山形県",
#               "text": ""
#             },
#             {
#               "type": "message",
#               "label": "福島県",
#               "text": ""
#             },
#             {
#               "type": "message",
#               "label": "茨城県",
#               "text": ""
#             },
#             {
#               "type": "message",
#               "label": "栃木県",
#               "text": ""
#             },
#             {
#               "type": "message",
#               "label": "次へ",
#               "text": ""
#             }
#           ]
#       }
#     }
#   end
# end

class Weather_area
  def template_prefectures1
    {
      "type": "template",
      "altText": "this is a buttons template",
      "template": {
          "type": "buttons",
          "text": "都道府県を選んで下さい",
          "actions": [
              {
                "type": "message",
                # Botから送られてきたメッセージに表示される文字列です。
                "label": "北海道",
                # ボタンを押した時にBotに送られる文字列です。
                "text": "北海道"
              },
              {
                "type": "message",
                "label": "青森県",
                "text": "青森県"
              },
              {
                "type": "message",
                "label": "岩手県",
                "text": "岩手県"
              },
              {
                "type": "message",
                "label": "",
                "text": "宮城県"
              },
              {
                "type": "message",
                "label": "",
                "text": "秋田県"
              },
              {
                "type": "message",
                "label": "山形県",
                "text": "山形県"
              },
              {
                "type": "message",
                "label": "福島県",
                "text": "福島県"
              },
              {
                "type": "message",
                "label": "茨城県",
                "text": "茨城県"
              },
              {
                "type": "message",
                "label": "栃木県",
                "text": "栃木県"
              },
              {
                "type": "message",
                "label": "次へ",
                "text": "次へ1"
              }
          ]
      }
    }
  end
end