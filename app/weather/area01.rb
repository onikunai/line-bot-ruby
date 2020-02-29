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
      pref = '兵庫県'
      message = {
        type: 'text',
        text: '兵庫県'
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


