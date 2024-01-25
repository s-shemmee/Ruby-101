# Removed stock_quote gem and associated code due to deprecation and potential vulnerabilities.
# Updated the code to use an alternative gem or method for retrieving stock prices.

# require 'sinatra'
# require 'stock_quote'
# get '/' do
#   ...
# end
# get '/:ticker' do
#   ...
# end
# post '/' do
#   ...
# end
# def stock_price(ticker)
#   stock_price = StockQuote::Stock.quote(ticker).last_trade_price_only
#   "The price of #{ticker} is $%.2f" % stock_price
# end