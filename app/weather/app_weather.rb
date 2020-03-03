require 'httpclient'
require 'resolv'
require 'json'
require 'yaml'
require './app/weather/info'
# require './app/weather/area'

class Weather

  @@DESCRIPTION = "description"
  @@TEXT = "text"
  @@FORECASTS = "forecasts"
  @@TELOP = "telop"
  @@DATE = "date"
  @@TEMPERATURE = "temperature"
  @@CELSIUS = "celsius"
  @@MIN = "min"
  @@MAX = "max"
  @@TODAY = 0
  @@TMRW = 1

  # コンストラクタ
  def initialize()
  end

  # メイン処理メソッド
  def doProcess(city)
    # 拠点コード
    # require './app/weather/area'
    # weather_area = Weather_area.new
    keyWord = weather_area.city_code(city)
    # keyWord = YAML.load_file('./config/config.yml')["location-code"]
    # keyWord = "130010"
    # 天気API URL取得
    # url = YAML.load_file('./config/config.yml')["weather-url"]
    url = "http://weather.livedoor.com/forecast/webservice/json/v1"
    return analysisWeather(connectionAPI(keyWord, url))
  end

  # API接続部
  # 戻り値:ハッシュ化されたレスポンス
  def connectionAPI(keyWord, url)
    # http接続クライアントの生成
    client = HTTPClient.new
    # 指定した拠点のコードをリクエストに設定する。
    query = { 'city' => keyWord }
    # APIリクエスト
    res = client.get(url, query)
    # ハッシュ化して返却
    return JSON.parse(res.body)
  end

  # 天気情報をHashより解析する
  def analysisWeather(hash)

    info = WeatherInfo.new
    # 概要の取得
    info.description=(convertNil(hash.dig(@@DESCRIPTION, @@TEXT)))

    # 本日の天気情報
    info.todayTelop=(convertNil(hash.dig(@@FORECASTS, @@TODAY, @@TELOP)))
    info.today=(convertNil(hash.dig(@@FORECASTS, @@TODAY, @@DATE)))
    info.todayTempMin=(convertNil(hash.dig(@@FORECASTS, @@TODAY, @@TEMPERATURE, @@MIN, @@CELSIUS)))
    info.todayTempMax=(convertNil(hash.dig(@@FORECASTS, @@TODAY, @@TEMPERATURE, @@MAX, @@CELSIUS)))

    # 明日の天気情報
    info.tmrwTelop=(convertNil(hash.dig(@@FORECASTS, @@TMRW, @@TELOP)))
    info.tmrw=(convertNil(hash.dig(@@FORECASTS, @@TMRW, @@DATE)))
    info.tmrwTempMin=(convertNil(hash.dig(@@FORECASTS, @@TMRW, @@TEMPERATURE, @@MIN, @@CELSIUS)))
    info.tmrwTempMax=(convertNil(hash.dig(@@FORECASTS, @@TMRW, @@TEMPERATURE, @@MAX, @@CELSIUS)))

    return info
  end

  # nil判定、nilの場合は「-」を返却
  def convertNil(value)
    return value == nil ? "－" : value
  end
end

class Weather_say
  def message(city)
    weatherobj = Weather.new
    info = weatherobj.doProcess(city)
    # city = weatherobj.doProcess(city).city
    message = {
      type: 'text',
      # text: "今日、#{info.today()} 東京の天気です。\n 天気    ：#{info.todayTelop()}\n 最高気温：#{info.todayTempMax()}\n 最低気温：#{info.todayTempMin()}\n\n明日、#{info.tmrw()} 東京の天気です。\n 天気    ：#{info.tmrwTelop()}\n 最高気温：#{info.tmrwTempMax()}\n 最低気温：#{info.tmrwTempMin()}\n【概要】\n #{info.description()}"
      text: "今日、#{info.today()} #{city}市の天気です。\n 天気    ：#{info.todayTelop()}\n 最高気温：#{info.todayTempMax()}\n 最低気温：#{info.todayTempMin()}\n\n明日、#{info.tmrw()} 東京の天気です。\n 天気    ：#{info.tmrwTelop()}\n 最高気温：#{info.tmrwTempMax()}\n 最低気温：#{info.tmrwTempMin()}"
    }
  end
end