class Review < ApplicationRecord
  belongs_to :user
  belongs_to :car

  validates :post, presence: true
end
