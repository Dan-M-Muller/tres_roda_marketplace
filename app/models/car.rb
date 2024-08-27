class Car < ApplicationRecord
  has_many :deals
  belongs_to :user
  has_one_attached :photo

  validates :brand, :model, :km, presence: true
end
