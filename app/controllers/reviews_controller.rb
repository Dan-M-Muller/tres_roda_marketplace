class ReviewsController < ApplicationController
  before_action :set_review, only: %i[show]

  def new
    @comment = Review.new()
  end

  private

  def set_review
    @comment = Review.find(params[:id])
  end
end
