class Weather

require 'open-uri'
require 'json'

  def get_data
    forecast_url = "http://api.openweathermap.org/data/2.5/weather?q=Chicago,IL"
    string_data = open(URI.encode(forecast_url)).read
    data = JSON.parse(string_data)

    return data
  end


  def get_current_temperature
    data = get_data
    temp = data["main"]["temp"]
    fahrenheit = (temp - 273.15)* 1.8000 + 32.00
    current_temp_degree = fahrenheit.to_i

   return current_temp_degree

  end

  def get_current_condition
    data = get_data
    condition = data["weather"].first["description"]

    return condition
  end

end
