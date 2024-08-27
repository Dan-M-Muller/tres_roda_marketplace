class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @sorted_cars = Car.order("RANDOM()").limit(9)
  end
end
