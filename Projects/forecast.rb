require 'forecast_io'
require 'geocoder'

ForecastIO.api_key = '45cb745df4eb44129be9a5a22d8f0733'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

coordinates = Geocoder.coordinates("McCarren Park, Brooklyn, NYC")
forecast = ForecastIO.forecast(coordinates[0], coordinates[1]).currently

puts "#{forecast.summary} and #{forecast.temperature} in McCarren Park, Brooklyn, NYC"
