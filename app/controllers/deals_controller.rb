class DealsController < ApplicationController

  def index
    
  end
  def new
    @car = Car.find(params[:car_id])
    @deal = Deal.new()
  end
end
