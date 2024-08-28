class Booking < ApplicationRecord
  belongs_to :dog, dependent: :destroy
  belongs_to :user, dependent: :destroy
end
