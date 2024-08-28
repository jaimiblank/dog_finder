class AddForeignKeysToBookings < ActiveRecord::Migration[7.1]
  def change
    add_reference :bookings, :dog, foreign_key: true
    add_reference :bookings, :user, foreign_key: true
  end
end
