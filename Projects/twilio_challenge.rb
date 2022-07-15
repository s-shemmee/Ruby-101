require 'twilio-ruby'
require 'stock_quote'

account_sid = "AC9c5237acf6f9474baff618edcc116939"
auth_token = "22211c63cb8a264ed44871791ca87453"
@client = Twilio::REST::Client.new account_sid, auth_token

def stock_price(ticker)
	stock_price = StockQuote::Stock.quote(ticker).last_trade_price_only
	"The price of #{ticker} is $#{stock_price}"
end

def text(message)
	@client.messages.create(
		from: '+16464900357',
		to: '+12016473233',
		body: message
	)
end

stocks = ["AAPL", "GOOG", "FB"]

stocks.each do |ticker|
	text(stock_price(ticker))
end