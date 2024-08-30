class User < ApplicationRecord
  has_many :deals, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :cars, dependent: :destroy
  has_many :cars, through: :deals
  has_one :profile

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, presence: :true
end
