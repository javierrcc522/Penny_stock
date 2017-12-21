class StocksController < ApplicationController
  def index
    stock = Stock.new()
    if params[:ticker]
      @price = stock.get_price(params[:ticker])
      @detail = stock.get_detail(params[:ticker])
      @input = stock.get_name(params[:ticker])
    end

  end
end
