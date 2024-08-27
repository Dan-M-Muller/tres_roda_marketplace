class Car < ApplicationRecord
  has_many :deals
  belongs_to :user

  validates :brand, :model, :km, :year, presence: true
end
