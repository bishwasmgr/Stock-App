class HomeController < ApplicationController
  def index
    if params[:checker] == ""
      @nothing = "You forget to Enter"
    elsif params[:checker]
      @api = StockQuote::Stock.new(api_key: 'pk_82131e29bd244d589b1e466913b36f80')
      @data = StockQuote::Stock.quote(params[:checker])
      if !@data
        @error = "Error"
      end
    end
  end

  def about

  end
end
