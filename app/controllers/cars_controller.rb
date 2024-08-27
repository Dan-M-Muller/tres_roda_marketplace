class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    if @car.save
      redirect_to car_path(@car), :notice => "Seu carro foi salvo com sucesso!"
    else
      flash.now[:notice] = "Não foi possivel salvar o carro. Por favor reveja as informações..."
      render :new
    end
  end

  def delete
  end

  private

  def car_params
    params.require(:car).permit(:brand, :model, :year, :km, :photo)
  end
end
