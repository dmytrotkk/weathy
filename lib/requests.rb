require 'rubygems'
require 'httparty'
require 'weathy'

class Requests

  def self.request_weather_by_city(city,state)
    HTTParty.get("http://api.openweathermap.org/data/2.5/weather?q=#{city},#{state}&units=imperial&appid="+$api_key)
  end


end