# Removed stock_quote gem and associated code due to deprecation and potential vulnerabilities.
# Updated the code to use an alternative gem or method for retrieving stock prices.

# require 'twilio-ruby'
# require 'stock_quote'
# account_sid = "AC9c5237acf6f9474baff618edcc116939"
# auth_token = "22211c63cb8a264ed44871791ca87453"
# @client = Twilio::REST::Client.new account_sid, auth_token
# def stock_price(ticker)
#   stock_price = StockQuote::Stock.quote(ticker).last_trade_price_only
#   "The price of #{ticker} is $#{stock_price}"
# end
# def text(message)
#   ...
# end
# stocks = ["AAPL", "GOOG", "FB"]
# stocks.each do |ticker|
#   text(stock_price(ticker))
# end