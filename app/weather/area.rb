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
    when /宮崎/
      text1 = "宮崎"
      text2 = "延岡"
      text3 = "都城"
      text4 = "高千穂"
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
    when "北見"
      keyWord = "013020"
    when "紋別"
      keyWord = "013030"
    when "根室"
      keyWord = "014010"
    when "釧路"
      keyWord = "014020"
    when "帯広"
      keyWord = "014030"
    # 道央
    when "札幌"
      keyWord = "016010"
    when "岩見沢"
      keyWord = "016020"
    when "倶知安"
      keyWord = "016030"
    # 道南
    when "室蘭"
      keyWord = "015010"
    when "浦河"
      keyWord = "015020"
    when "函館"
      keyWord = "017010"
    when "江差"
      keyWord = "017020"
    # 青森
    when "青森"
      keyWord = "020010"
    when "むつ"
      keyWord = "020020"
    when "八戸"
      keyWord = "020030"
    # 岩手
    when "盛岡"
      keyWord = "030010"
    when "宮古"
      keyWord = "030020"
    when "大船渡"
      keyWord = "030030"
    # 宮城
    when "仙台"
      keyWord = "040010"
    when "白石"
      keyWord = "040020"
    # 秋田
    when "秋田"
      keyWord = "050010"
    when "横手"
      keyWord = "050020"
    # 山形
    when "山形"
      keyWord = "060010"
    when "米沢"
      keyWord = "060020"
    when "酒田"
      keyWord = "060030"
    when "新庄"
      keyWord = "060040"
    # 福島
    when "福島"
      keyWord = "070010"
    when "小名浜"
      keyWord = "070020"
    when "若松"
      keyWord = "070030"
    # 茨城
    when "水戸"
      keyWord = "080010"
    when "土浦"
      keyWord = "080020"
    # 栃木
    when "宇都宮"
      keyWord = "090010"
    when "大田原"
      keyWord = "090020"
    # 群馬
    when "前橋"
      keyWord = "100010"
    when "みなかみ"
      keyWord = "100020"
    # 埼玉
    when "さいたま"
      keyWord = "110010"
    when "熊谷"
      keyWord = "110020"
    when "秩父"
      keyWord = "110030"
    # 千葉
    when "千葉"
      keyWord = "120010"
    when "銚子"
      keyWord = "120020"
    when "館山"
      keyWord = "120030"
    # 東京
    when "東京"
      keyWord = "130010"
    when "大島"
      keyWord = "130020"
    when "八丈島"
      keyWord = "130030"
    when "父島"
      keyWord = "130040"
    # 神奈川
    when "横浜"
      keyWord = "140010"
    when "小田原"
      keyWord = "140020"
    # 新潟
    when "新潟"
      keyWord = "150010"
    when "長岡"
      keyWord = "150020"
    when "高田"
      keyWord = "150030"
    when "相川"
      keyWord = "150040"
    # 富山
    when "富山"
      keyWord = "160010"
    when "伏木"
      keyWord = "160020"
    # 石川
    when "金沢"
      keyWord = "170010"
    when "輪島"
      keyWord = "170020"
    # 福井
    when "福井"
      keyWord = "180010"
    when "敦賀"
      keyWord = "180020"
    # 山梨
    when "甲府"
      keyWord = "190010"
    when "河口湖"
      keyWord = "190020"
    # 長野
    when "長野"
      keyWord = "200010"
    when "松本"
      keyWord = "200020"
    when "飯田"
      keyWord = "200030"
    # 岐阜
    when "岐阜"
      keyWord = "210010"
    when "高山"
      keyWord = "210020"
    # 静岡
    when "静岡"
      keyWord = "220010"
    when "網代"
      keyWord = "220020"
    when "三島"
      keyWord = "220030"
    when "浜松"
      keyWord = "220040"
    # 愛知
    when "名古屋"
      keyWord = "230010"
    when "豊橋"
      keyWord = "230020"
    # 三重
    when "津"
      keyWord = "240010"
    when "尾鷲"
      keyWord = "240020"
    # 滋賀
    when "大津"
      keyWord = "250010"
    when "彦根"
      keyWord = "250020"
    # 京都
    when "京都"
      keyWord = "260010"
    when "舞鶴"
      keyWord = "260020"
    # 大阪
    when "大阪"
      keyWord = "270000"
    # 兵庫
    when "神戸"
      keyWord = "280010"
    when "豊岡"
      keyWord = "280020"
    # 奈良
    when "奈良"
      keyWord = "290010"
    when "風屋"
      keyWord = "290020"
    # 和歌山
    when "和歌山"
      keyWord = "300010"
    when "潮岬"
      keyWord = "300020"
    # 鳥取
    when "鳥取"
      keyWord = "310010"
    when "米子"
      keyWord = "310020"
    # 島根
    when "松江"
      keyWord = "320010"
    when "浜田"
      keyWord = "320020"
    when "西郷"
      keyWord = "320030"
    # 岡山
    when "岡山"
      keyWord = "330010"
    when "津山"
      keyWord = "330020"
    # 広島
    when "広島"
      keyWord = "340010"
    when "庄原"
      keyWord = "340020"
    # 山口
    when "下関"
      keyWord = "350010"
    when "山口"
      keyWord = "350020"
    when "柳井"
      keyWord = "350030"
    when "萩"
      keyWord = "350040"
    # 徳島
    when "徳島"
      keyWord = "360010"
    when "日和佐"
      keyWord = "360020"
    # 香川
    when "高松"
      keyWord = "370000"
    # 愛媛
    when "松山"
      keyWord = "380010"
    when "新居浜"
      keyWord = "380020"
    when "宇和島"
      keyWord = "380030"
    # 高知
    when "高知"
      keyWord = "390010"
    when "室戸岬"
      keyWord = "390020"
    when "清水"
      keyWord = "390030"
    # 福岡
    when "福岡"
      keyWord = "400010"
    when "八幡"
      keyWord = "400020"
    when "飯塚"
      keyWord = "400030"
    when "久留米"
      keyWord = "400040"
    # 佐賀
    when "佐賀"
      keyWord = "410010"
    when "伊万里"
      keyWord = "410020"
    # 長崎
    when "長崎"
      keyWord = "420010"
    when "佐世保"
      keyWord = "420020"
    when "厳原"
      keyWord = "420030"
    when "福江"
      keyWord = "420040"
    # 熊本
    when "熊本"
      keyWord = "430010"
    when "阿蘇乙姫"
      keyWord = "430020"
    when "牛深"
      keyWord = "430030"
    when "人吉"
      keyWord = "430040"
    # 大分
    when "大分"
      keyWord = "440010"
    when "中津"
      keyWord = "440020"
    when "日田"
      keyWord = "440030"
    when "佐伯"
      keyWord = "440040"
    # 宮崎
    when "宮崎"
      keyWord = "450010"
    when "延岡"
      keyWord = "450020"
    when "都城"
      keyWord = "450030"
    when "高千穂"
      keyWord = "450040"
    # 鹿児島
    when "鹿児島"
      keyWord = "460010"
    when "鹿屋"
      keyWord = "460020"
    when "種子島"
      keyWord = "460030"
    when "名瀬"
      keyWord = "460040"
    # 沖縄
    when "那覇"
      keyWord = "471010"
    when "名護"
      keyWord = "471020"
    when "久米島"
      keyWord = "471030"
    when "南大東"
      keyWord = "472000"
    when "宮古島"
      keyWord = "473000"
    when "石垣島"
      keyWord = "474010"
    when "与那国島"
      keyWord = "474020"
    end
  end

  # 変換
  def area_info(pref, city)
    # 都道府県の変換
    case pref
    when "東京都", "大阪府", "京都府", /県/
    else
      case pref
      when "東京"
        pref = pref + "都"
      when "大阪" || "京都"
        pref = pref + "府"
      when "道北" || "道東" || "道央" || "道南"
        pref = "北海道"
      else
        pref = pref + "県"
      end
    end

    # 市町村の変換
    case city
    # 北海道
    when "倶知安" || "浦河" || "江差"
      city = city + "町"
    # 東京
    when "東京" ||  "大島" || "八丈島" || "父島"
    # 沖縄
    when "久米島" || "南大東" || "宮古島" || "石垣島" || "与那国島"
    # 鹿児島
    when "種子島"
    else
      city = city + "市"
    end

    if city == "東京"
      return pref
    else
      return pref + city
    end
  end

end
