require 'rest-client'

class Restaurant
  def initialize(city)
    @city = city
  end

  def get_city_id
    response = RestClient.get('https://developers.zomato.com/api/v2.1/cities?q=' + @zip, {user-key: ENV[API_KEY]})
    response['location_suggesstions'].first['id']
  end

  def get_nearby_restaurants(city_id)
    response = RestClient.get('https://developers.zomato.com/api/v2.1/search?entity_id=' + city_id + '&entity_type=city&count=5', {user-key: ENV[API_KEY]})
    response['restaurants']
  end
end