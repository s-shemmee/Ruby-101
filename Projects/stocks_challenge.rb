require 'stock_quote'

def stock_price(ticker)
	stock_price = StockQuote::Stock.quote(ticker).last_trade_price_only
	"The price of #{ticker} is $#{stock_price}"
end

puts stock_price("TSLA")
puts stock_price("AAPL")