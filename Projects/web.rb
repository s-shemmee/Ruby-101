require 'sinatra'
require 'stock_quote'

get '/' do
	@greeting = "Welcome to One Month Ruby"
  	erb :index
end

get '/:ticker' do
	@greeting = stock_price(params[:ticker])
	erb :index
end

post '/' do
	@greeting = stock_price(params[:ticker])
	erb :index
end

def stock_price(ticker)
	stock_price = StockQuote::Stock.quote(ticker).last_trade_price_only
	"The price of #{ticker} is $%.2f" % stock_price
end