# template_city = 
# {
#   "type": "template",
#   "altText": "this is a buttons template",
#   "template": {
#       "type": "buttons",
#       "text": "メニューを選んで下さい",
#       "actions": [
#           {
#             "type": "message",
#             # Botから送られてきたメッセージに表示される文字列です。
#             "label": 'text1',
#             # ボタンを押した時にBotに送られる文字列です。
#             "text": 'text1',
#           },
#           {
#             "type": "message",
#             "label": 'text2',
#             "text": 'text2',
#           }
#       ]
#   }
# }
# # template_city.template.actions.shift()
# # hash = JSON.parse(template_city)

# puts template_city["type"]

# import json
 
# json_file = open('test.json', 'r')
# json_object = json.load(json_file)
 
# print(json_object["template"]["actions"][0])

require 'json'
 
File.open("test.json") do |file|
  hash = JSON.load(file)
  p hash
end