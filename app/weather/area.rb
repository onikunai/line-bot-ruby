# 参照ファイル
# require './app/0form/template'



# class Weather_area
#   def prefectures(pref)
#     title = '地域を選んで下さい'

#     if pref == '北海道'
#       pref = '北海道'
#       message = {
#         type: 'text',
#         text: '北海道'
#       }
#     elsif pref == '東京都'
#       # pref = '東京都'
#       message = {
#         type: 'text',
#         text: '東京都'
#       }
#     elsif pref == "兵庫県"
#       text1 = "神戸"
#       # text2 = "豊岡"
#       # text3 = ""
#       # text4 = ""
#       # form = Form.new
#       # template = form.template(title, text1, text2, text3, text4)
#     else
#       pref = "都道府県を送信して下さい。\n記入例：北海道、東京都、兵庫県など"
#       message = {
#         type: 'text',
#         text: "都道府県を送信して下さい。\n記入例：北海道、東京都、兵庫県など"
#       }
#     end
#   end

#   # 拠点コード
#   def city_code(city)
#     city = "神戸"
#     case city
#     # 道北
#     when "稚内"
#       keyWord = "011000"
#     when "旭川"
#       keyWord = "012010"
#     when "留萌"
#       keyWord = "012020"
    
#     # 道東
#     when "網走"
#       keyWord = "013010"
#     when "旭川"
#       keyWord = "012010"
#     when "留萌"
#       keyWord = "012020"
#     when "北見"
#       keyWord = "013020"
#     when "紋別"
#       keyWord = "013030"
#     when "根室"
#       keyWord = "014010"
#     when "釧路"
#       keyWord = "014020"
#     when "帯広"
#       keyWord = "014030"
  
#     # 兵庫県
#     when "神戸"
#       keyWord = "280010"
#     when "豊岡"
#       keyWord = "280020"
      
# # 道央	
# # 札幌	016010
# # 岩見沢	016020
# # 倶知安	016030
	
# # 道南	
# # 室蘭	015010
# # 浦河	015020
# # 函館	017010
# # 江差	017020
	
# # 青森県	
# # 青森	020010
# # むつ	020020
# # 八戸	020030
	
# # 岩手県	
# # 盛岡	030010
# # 宮古	030020
# # 大船渡	030030
	
# # 宮城県	
# # 仙台	040010
# # 白石	040020
	
# # 秋田県	
# # 秋田	050010
# # 横手	050020
	
# # 山形県	
# # 山形	060010
# # 米沢	060020
# # 酒田	060030
# # 新庄	060040
	
# # 福島県	
# # 福島	070010
# # 小名浜	070020
# # 若松	070030
	
# # 茨城県	
# # 水戸	080010
# # 土浦	080020
	
# # 栃木県	
# # 宇都宮	090010
# # 大田原	090020
	
# # 群馬県	
# # 前橋	100010
# # みなかみ	100020
	
# # 埼玉県	
# # さいたま	110010
# # 熊谷	110020
# # 秩父	110030
	
# # 千葉県	
# # 千葉	120010
# # 銚子	120020
# # 館山	120030
	
# # 東京都	
# # 東京	130010
# # 大島	130020
# # 八丈島	130030
# # 父島	130040
	
# # 神奈川県	
# # 横浜	140010
# # 小田原	140020
	
# # 新潟県	
# # 新潟	150010
# # 長岡	150020
# # 高田	150030
# # 相川	150040
	
# # 富山県	
# # 富山	160010
# # 伏木	160020
	
# # 石川県	
# # 金沢	170010
# # 輪島	170020
	
# # 福井県	
# # 福井	180010
# # 敦賀	180020
	
# # 山梨県	
# # 甲府	190010
# # 河口湖	190020
	
# # 長野県	
# # 長野	200010
# # 松本	200020
# # 飯田	200030
	
# # 岐阜県	
# # 岐阜	210010
# # 高山	210020
	
# # 静岡県	
# # 静岡	220010
# # 網代	220020
# # 三島	220030
# # 浜松	220040
	
# # 愛知県	
# # 名古屋	230010
# # 豊橋	230020
	
# # 三重県	
# # 津	240010
# # 尾鷲	240020
	
# # 滋賀県	
# # 大津	250010
# # 彦根	250020
	
# # 京都府	
# # 京都	260010
# # 舞鶴	260020
	
# # 大阪府	
# # 大阪	270000
	
# # 兵庫県	
# # 神戸	280010
# # 豊岡	280020
	
# # 奈良県	
# # 奈良	290010
# # 風屋	290020
	
# # 和歌山県	
# # 和歌山	300010
# # 潮岬	300020
	
# # 鳥取県	
# # 鳥取	310010
# # 米子	310020
	
# # 島根県	
# # 松江	320010
# # 浜田	320020
# # 西郷	320030
	
# # 岡山県	
# # 岡山	330010
# # 津山	330020
	
# # 広島県	
# # 広島	340010
# # 庄原	340020
	
# # 山口県	
# # 下関	350010
# # 山口	350020
# # 柳井	350030
# # 萩	350040
	
# # 徳島県	
# # 徳島	360010
# # 日和佐	360020
	
# # 香川県	
# # 高松	370000
	
# # 愛媛県	
# # 松山	380010
# # 新居浜	380020
# # 宇和島	380030
	
# # 高知県	
# # 高知	390010
# # 室戸岬	390020
# # 清水	390030
	
# # 福岡県	
# # 福岡	400010
# # 八幡	400020
# # 飯塚	400030
# # 久留米	400040
	
# # 佐賀県	
# # 佐賀	410010
# # 伊万里	410020
	
# # 長崎県	
# # 長崎	420010
# # 佐世保	420020
# # 厳原	420030
# # 福江	420040
	
# # 熊本県	
# # 熊本	430010
# # 阿蘇乙姫	430020
# # 牛深	430030
# # 人吉	430040
	
# # 大分県	
# # 大分	440010
# # 中津	440020
# # 日田	440030
# # 佐伯	440040
	
# # 宮崎県	
# # 宮崎	450010
# # 延岡	450020
# # 都城	450030
# # 高千穂	450040
	
# # 鹿児島県	
# # 鹿児島	460010
# # 鹿屋	460020
# # 種子島	460030
# # 名瀬	460040
	
# # 沖縄県	
# # 那覇	471010
# # 名護	471020
# # 久米島	471030
# # 南大東	472000
# # 宮古島	473000
# # 石垣島	474010
# # 与那国島	474020

#   end

# end

class Weather_area


  def prefectures(pref)
    title = '地域を選んで下さい'
    text1 = ""
    text2 = ""
    text3 = ""
    text4 = ""
    
    if pref == '北海道'
      pref = '北海道'
      message = {
        type: 'text',
        text: '北海道'
      }
    elsif pref == '東京都'
      # pref = '東京都'
      message = {
        type: 'text',
        text: '東京都'
      }
    elsif pref == "兵庫県"
      text1 = "神戸"
      text2 = "豊岡"
      # text3 = ""
      # text4 = ""
      form = Form.new
      template = form.template(title, text1, text2, text3, text4)
    else
      pref = "都道府県を送信して下さい。\n記入例：北海道、東京都、兵庫県など"
      message = {
        type: 'text',
        text: "都道府県を送信して下さい。\n記入例：北海道、東京都、兵庫県など"
      }
    end
  end

end


