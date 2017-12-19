class Stock
  def api_call(ticker)
    response =  RestClient.get("https://api.robinhood.com/quotes/#{ticker}/")
    JSON.parse(response)
  end
end
