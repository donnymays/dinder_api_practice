# require 'rest-client'

class Restaurant
  # def initialize(city)
  #   @city = city
  # end

  def get_city_id
    # response = RestClient.get('https://developers.zomato.com/api/v2.1/cities?q=' + @city, headers={:user-key => ENV['API_KEY']})
    # response['location_suggesstions'].first['id']
  end

  def get_nearby_restaurants
    headers = { 
      'user-key' => ENV['API_KEY']
    }

    @response = HTTParty.get('https://developers.zomato.com/api/v2.1/search?entity_id=279&entity_type=city&count=5', :headers => headers )
    @response['restaurants']
  end
end