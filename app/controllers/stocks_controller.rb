class StocksController < ApplicationController
  def index
    stock_object = Stock.new()
    if params[:ticker]
      @test = stock_object.api_call(params[:ticker])
    end
  end
end
