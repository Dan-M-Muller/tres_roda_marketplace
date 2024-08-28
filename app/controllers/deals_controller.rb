class DealsController < ApplicationController

  def index
    @seller_deals = Deal.by_seller(current_user)
  end

  def my
    @buyer_deals = current_user.deals
  end
  def new
    @car = Car.find(params[:car_id])
    @deal = Deal.new()
    @buyer = current_user
    # raise
  end

  def create
    @buyer = current_user
    @car = Car.find(params[:car_id])
    @deal = Deal.new(deal_params)
    @deal.user = @buyer
    @deal.car = @car
    @deal.save
    redirect_to deal_path(@deal)
  end

  def show
    @deal = Deal.find(params[:id])
  end

  private

  def deal_params
    params.require(:deal).permit(:price)
  end
end
