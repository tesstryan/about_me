class Weather

require 'open-uri'
require 'json'


  def get_current_temperature(city, state)
    forecast_url = "http://api.openweathermap.org/data/2.5/weather?q=#{city},#{state}"
    string_data = open(URI.encode(forecast_url)).read
    data = JSON.parse(string_data)

    temp = data["main"]["temp"]
    fahrenheit = (temp - 273.15)* 1.8000 + 32.00
    current_temp_degree = fahrenheit.to_i

   return current_temp_degree

  end


end
