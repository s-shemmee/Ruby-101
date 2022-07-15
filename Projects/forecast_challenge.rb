# require 'forecast_io'
# require 'geocoder'

# ForecastIO.api_key = 'e326ff277597a7bac3be28c75ff9c5ec'

# def current_weather(location)
# 	coordinates = Geocoder.coordinates(location)
# 	forecast = ForecastIO.forecast(coordinates[0], coordinates[1]).currently
# 	return "#{forecast.summary} and #{forecast.temperature} in #{location}"
# end

# puts current_weather("McCarren Park, Brooklyn NYC")

require 'forecast_io'
require 'geocoder'

ForecastIO.api_key = 'e326ff277597a7bac3be28c75ff9c5ec'

def current_weather(location)
	if coordinates = Geocoder.coordinates(location)
		forecast = ForecastIO.forecast(coordinates[0], coordinates[1]).currently
		return "#{forecast.summary} and #{forecast.temperature} in #{location}"
	else
		return "Location not found"
	end
end

puts current_weather("McCarren Park, Brooklyn NYC")
puts current_weather("")