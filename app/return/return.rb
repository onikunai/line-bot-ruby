#元のコードを残している。このファイルは使用していない。

# require 'sinatra'
# require 'line/bot'

# def client
#   @client ||= Line::Bot::Client.new { |config|
#     config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
#     config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
#   }
# end

# post '/callback' do
#   body = request.body.read
#   events = client.parse_events_from(body)
#   events.each { |event|
#     case event
#     when Line::Bot::Event::Message
#       case event.type
#       when Line::Bot::Event::MessageType::Text
#         if event.message['text'] == 'また明日'
#           keyword == "また明日"
#         else
#           message = {
#             type: 'text',
#             text: event.message['text']
#           }
#           client.reply_message(event['replyToken'], message)
#         end
#       when Line::Bot::Event::MessageType::Image, Line::Bot::Event::MessageType::Video
#         response = client.get_message_content(event.message['id'])
#         tf = Tempfile.open("content")
#         tf.write(response.body)
#         keyword == "また明日"
#       end
#     end
#   }

#   "OK"
# end