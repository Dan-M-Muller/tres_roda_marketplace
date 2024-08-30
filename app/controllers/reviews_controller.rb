class ReviewsController < ApplicationController


  def create
    @user = current_user
    @car = Car.find(params[:car_id])
    @review = Review.new(review_params)
    @review.car = @car
    @review.user = @user
    if @review.save
      redirect_to car_path(@review.car)
    else
      render "cars/show", car: @car, review: @review, status: :unprocessable_entity
    end
  end

  private


  def review_params
    params.require(:review).permit(:post)
  end
end
