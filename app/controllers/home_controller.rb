class HomeController < ApplicationController
  def index
    # restaurants = Restaurant.new('portland')
    # city_id = restaurants.get_city_id
    @restaurants = Restaurant.new.get_nearby_restaurants
  end
end