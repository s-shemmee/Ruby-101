require 'twilio-ruby'
require 'dotenv'
Dotenv.load

account_sid = ENV['ACCOUNT_SID']
auth_token = ENV['AUTH_TOKEN']

@client = Twilio::REST::Client.new account_sid, auth_token

@client.messages.create(
  from: '+16464900357',
  to: '+12016473233',
  body: 'Hey there!'
)