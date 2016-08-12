require "weathy/version"
require "requests"


# '1e54ebda5c5efd140e96c2c27d5ed223'

module Weathy

  $api_key = nil

  class << self

    def set_api_key(api_key)
      $api_key = api_key
    end

    def check_api_key
      !$api_key.nil?
    end

    def weather_by_city(city,state)
      if check_api_key
        res = Requests.request_weather_by_city(city,state)
        puts res
        @res = res.parsed_response
      else
        @res = 'Please, set up api key by typing "Weathy.set_api_key(your_api_key)" '
      end
      @res
    end

  end

end
