class Stock
  def api_call(company)
    response =  RestClient.get('https://api.robinhood.com/quotes/' + company + '/')
  JSON.parse(response)
  end
end
