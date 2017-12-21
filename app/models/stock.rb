class Stock
  def get_price(ticker)
    x = get_name(ticker)['results'].first['symbol']
    response =  RestClient.get("https://api.robinhood.com/quotes/#{x}/")
    JSON.parse(response)
  end

  def get_detail(ticker)
    x = get_name(ticker)['results'].first['symbol']
    response =  RestClient.get("https://api.robinhood.com/fundamentals/?symbols=#{x}")
    JSON.parse(response)
  end

  def get_name(input)
    response =  RestClient.get("https://api.robinhood.com/instruments/?query=#{input}\ ")
    JSON.parse(response)
  end
end
