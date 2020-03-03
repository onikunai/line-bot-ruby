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
  def prefectures(pref, city, form = Form.new, title = "地域を選んで下さい")
    case pref
    # if文なら pref.include?("道北")
    when /道北/
      text1 = "稚内"
      text2 = "旭川"
      text3 = "留萌"
      template = form.template(title, text1, text2, text3)
    when /道東/
      if city == ""
        text1 = "網走"
        text2 = "北見"
        text3 = "紋別"
        text4 = "次へ"
      else
        text1 = "根室"
        text2 = "釧路"
        text3 = "帯広"
        text4 = ""
      end
      template = form.template(title, text1, text2, text3, text4)
    when /道央/
      text1 = "札幌"
      text2 = "岩見沢"
      text3 = "倶知安"
      template = form.template(title, text1, text2, text3)
    when /道南/
      text1 = "室蘭"
      text2 = "浦河"
      text3 = "函館"
      text4 = "江差"
      template = form.template(title, text1, text2, text3, text4)
    when /青森/
      text1 = "青森"
      text2 = "むつ"
      text3 = "八戸"
      template = form.template(title, text1, text2, text3)
    when /岩手/
      text1 = "盛岡"
      text2 = "宮古"
      text3 = "大船渡"
      template = form.template(title, text1, text2, text3)
    when /宮城/
      text1 = "仙台"
      text2 = "白石"
      template = form.template(title, text1, text2)
    when /秋田/
      text1 = "秋田"
      text2 = "横手"
      template = form.template(title, text1, text2)
    when /山形/
      text1 = "山形"
      text2 = "米沢"
      text3 = "酒田"
      text4 = "新庄"
      template = form.template(title, text1, text2, text3, text4)
    when /福島/
      text1 = "福島"
      text2 = "小名浜"
      text3 = "若松"
      template = form.template(title, text1, text2, text3)
    when /茨城/
      text1 = "水戸"
      text2 = "土浦"
      template = form.template(title, text1, text2)
    when /栃木/
      text1 = "宇都宮"
      text2 = "大田原"
      template = form.template(title, text1, text2)
    when /群馬/
      text1 = "前橋"
      text2 = "みなかみ"
      template = form.template(title, text1, text2)
    when /埼玉/
      text1 = "さいたま"
      text2 = "熊谷"
      text3 = "秩父"
      template = form.template(title, text1, text2, text3)
    when /千葉/
      text1 = "千葉"
      text2 = "銚子"
      text3 = "館山"
      template = form.template(title, text1, text2, text3)
    when /東京/
      text1 = "東京"
      text2 = "大島"
      text3 = "八丈島"
      text4 = "父島"
      template = form.template(title, text1, text2, text3, text4)
    when /神奈川/
      text1 = "横浜"
      text2 = "小田原"
      template = form.template(title, text1, text2)
    when /新潟/
      text1 = "新潟"
      text2 = "長岡"
      text3 = "高田"
      text4 = "相川"
      template = form.template(title, text1, text2, text3, text4)
    when /富山/
      text1 = "富山"
      text2 = "伏木"
      template = form.template(title, text1, text2)
    when /石川/
      text1 = "金沢"
      text2 = "輪島"
      template = form.template(title, text1, text2)
    when /福井/
      text1 = "福井"
      text2 = "敦賀"
      template = form.template(title, text1, text2)
    when /山梨/
      text1 = "甲府"
      text2 = "河口湖"
      template = form.template(title, text1, text2)
    when /長野/
      text1 = "長野"
      text2 = "松本"
      text3 = "飯田"
      template = form.template(title, text1, text2, text3)
    when /岐阜/
      text1 = "岐阜"
      text2 = "高山"
      template = form.template(title, text1, text2)
    when /静岡/
      text1 = "静岡"
      text2 = "網代"
      text3 = "三島"
      text4 = "浜松"
      template = form.template(title, text1, text2, text3, text4)
    when /愛知/
      text1 = "名古屋"
      text2 = "豊橋"
      template = form.template(title, text1, text2)
    when /三重/
      text1 = "津"
      text2 = "尾鷲"
      template = form.template(title, text1, text2)
    when /滋賀/
      text1 = "大津"
      text2 = "彦根"
      template = form.template(title, text1, text2)
    when /京都/
      text1 = "京都"
      text2 = "舞鶴"
      template = form.template(title, text1, text2)
    when /大阪/
      text1 = "大阪"
      template = form.template(title, text1)
    when /兵庫/
      text1 = "神戸"
      text2 = "豊岡"
      template = form.template(title, text1, text2)
    when /奈良/
      text1 = "奈良"
      text2 = "風屋"
      template = form.template(title, text1, text2)
    when /和歌山/
      text1 = "和歌山"
      text2 = "潮岬"
      template = form.template(title, text1, text2)
    when /鳥取/
      text1 = "鳥取"
      text2 = "米子"
      template = form.template(title, text1, text2)
    when /島根/
      text1 = "松江"
      text2 = "浜田"
      text3 = "西郷"
      template = form.template(title, text1, text2, text3)
    when /岡山/
      text1 = "岡山"
      text2 = "津山"
      template = form.template(title, text1, text2)
    when /広島/
      text1 = "広島"
      text2 = "庄原"
      template = form.template(title, text1, text2)
    when /山口/
      text1 = "下関"
      text2 = "山口"
      text3 = "柳井"
      text4 = "萩"
      template = form.template(title, text1, text2, text3, text4)
    when /徳島/
      text1 = "徳島"
      text2 = "日和佐"
      template = form.template(title, text1, text2)
    when /香川/
      text1 = "高松"
      template = form.template(title, text1)
    when /愛媛/
      text1 = "松山"
      text2 = "新居浜"
      text3 = "宇和島"
      template = form.template(title, text1, text2, text3)
    when /高知/
      text1 = "高知"
      text2 = "室戸岬"
      text3 = "清水"
      template = form.template(title, text1, text2, text3)
    when /福岡/
      text1 = "福岡"
      text2 = "八幡"
      text3 = "飯塚"
      text4 = "久留米"
      template = form.template(title, text1, text2, text3, text4)
    when /佐賀/
      text1 = "佐賀"
      text2 = "伊万里"
      template = form.template(title, text1, text2)
    when /長崎/
      text1 = "長崎"
      text2 = "佐世保"
      text3 = "厳原"
      text4 = "福江"
      template = form.template(title, text1, text2, text3, text4)
    when /熊本/
      text1 = "熊本"
      text2 = "阿蘇乙姫"
      text3 = "牛深"
      text4 = "人吉"
      template = form.template(title, text1, text2, text3, text4)
    when /大分/
      text1 = "大分"
      text2 = "中津"
      text3 = "日田"
      text4 = "佐伯"
      template = form.template(title, text1, text2, text3, text4)
    when /鹿児島/
      text1 = "鹿児島"
      text2 = "鹿屋"
      text3 = "種子島"
      text4 = "名瀬"
      template = form.template(title, text1, text2, text3, text4)
    when /沖縄/
      if city == ""
        text1 = "那覇"
        text2 = "名護"
        text3 = "久米島"
        text4 = "次へ"
      else
        text1 = "南大東"
        text2 = "宮古島"
        text3 = "石垣島"
        text4 = "与那国島"
      end
      template = form.template(title, text1, text2, text3, text4)
    when "北海道"
      text1 = "道北"
      text2 = "道東"
      text3 = "道央"
      text4 = "道南"
      template = form.template(title, text1, text2, text3, text4)
    else
      message = {
        type: 'text',
        text: "都道府県を送信して下さい。\n例：東京、大阪、兵庫、道中など"
      }
    end
  end

  # 拠点コード
  def city_code(city)
    case city
    # 道北
    when "稚内"
      keyWord = "011000"
    when "旭川"
      keyWord = "012010"
    when "留萌"
      keyWord = "012020"
    # 道東
    when "網走"
      keyWord = "013010"
    when "旭川"
      keyWord = "012010"
    when "留萌"
      keyWord = "012020"

    # 東京都
    when "東京"
      keyWord = "130010"
    when "大島"
      keyWord = "130020"
    when "八丈島"
      keyWord = "130030"
    when "父島"
      keyWord = "130040"

    # 兵庫県
    when "神戸"
      keyWord = "280010"
    when "豊岡"
      keyWord = "280020"

    end
    # return keyWord
  end

end