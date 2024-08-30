class CarsController < ApplicationController
  before_action :set_car, only: %i[show delete edit update]
  def index
    @cars = Car.all
    if params[:query].present?
      @cars = Car.search_cars(params[:query])
    end
  end

  def show
    @review = Review.new()
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    if @car.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @car.update(car_params)
    redirect_to profiles_path
  end

  def delete
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:brand, :model, :year, :km, :photo, :initial_price)
  end
end
