module Api
    module V1
        class RestaurantsController < ApplicationController
            #get all restaurants from db and render them using serializer
            def index
                restaurants = Restaurant.all
                render json: RestaurantSerializer.new(restaurants).serialized_json
            end

            #get specific restaurants based on slug from db and render them using serializer
            def show
                restaurant = Restaurant.find_by(slug: params[:slug])
                render json: RestaurantSerializer.new(restaurant).serialized_json
            end

            def create
            end

            private

            def restaurant_params
                

        end
    end
end