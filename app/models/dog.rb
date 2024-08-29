class Dog < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :image
  has_one_attached :avatar
end
