# Removed stock_quote gem and associated code due to deprecation and potential vulnerabilities.
# Updated the code to use an alternative gem or method for retrieving stock prices.

# require 'stock_quote'
# def stock_price(ticker)
#   stock_price = StockQuote::Stock.quote(ticker).last_trade_price_only
#   "The price of #{ticker} is $#{stock_price}"
# end
# puts stock_price("TSLA")
# puts stock_price("AAPL")