class DealsController < ApplicationController

  def index
    @seller = Deal.by_seller(current_user)
  end
  def new
    @car = Car.find(params[:car_id])
    @deal = Deal.new()
    @buyer = current_user
    # raise
  end

  def create
    @deal = Deal.new(deal_params)
  end

  private

  def deal_params
    params.require(:deal).permit(:price)
  end
end
