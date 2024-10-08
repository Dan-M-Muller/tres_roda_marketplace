class DealsController < ApplicationController

  def index
    @review = Review.new()
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
    redirect_to deals_path(@deal)
  end

  def show
    @deal = Deal.find(params[:id])
  end

  def update
    @deal = Deal.find(params[:id])
    @deal.update(accepted?: true)

    redirect_to deals_path
  end

  private

  def deal_params
    params.require(:deal).permit(:price)
  end
end
