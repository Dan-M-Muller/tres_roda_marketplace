class Car < ApplicationRecord
  has_many :deals
  belongs_to :user
  has_one_attached :photo

  validates :brand, :model, :km, presence: true

  include PgSearch::Model
  pg_search_scope :search_cars,
    against: [ :model, :brand ],
    using: {
      tsearch: { prefix: true }
    }
end
