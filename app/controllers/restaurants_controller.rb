class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end


  def create

    @restaurant = Restaurant.new(params[:restaurant])
    @restaurant.save
  end

end

private

def restaurant_params
  params.require(:restaurant).permit(:name, :address, :phone_number, :category)
end
