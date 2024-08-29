class ProfilesController < ApplicationController
  def show
    @user = current_user
    @cars = Car.where(user_id: @user)
  end
end
