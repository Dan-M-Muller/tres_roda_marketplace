class Deal < ApplicationRecord
  belongs_to :car
  belongs_to :user

  def seller
    car.user
  end

  def buyer
    user
  end

  def self.by_seller(user)
    Deal.joins(car: :user).where(car: {user: user})
  end
end
