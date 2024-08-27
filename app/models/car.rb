class Car < ApplicationRecord
  has_many :deals
  belongs_to :user

  validates :brand, :model, :km, presence: true
end
