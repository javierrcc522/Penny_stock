class Stock
  def get_price(ticker)
    response =  RestClient.get("https://api.robinhood.com/quotes/#{ticker}/")
    JSON.parse(response)
  end

  def get_detail(ticker)
    response =  RestClient.get("https://api.robinhood.com/fundamentals/?symbols=#{ticker}")
    JSON.parse(response)
  end
end
