class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @sorted_cars = Car.order("RANDOM()").limit(9)

    return unless params[:query].present?

    @sorted_cars = Car.search_cars(params[:query])
  end
end
