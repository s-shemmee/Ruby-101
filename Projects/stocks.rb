require 'stock_quote'

stock_price = StockQuote::Stock.quote("tsla").last_trade_price_only

puts "The price of TSLA is $#{stock_price}"