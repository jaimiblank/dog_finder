class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:dashboard]

  def home
    @dogs = Dog.all.limit(10)
  end

  def dashboard
    @bookings_as_customer = current_user.bookings
    @bookings_as_owner = Booking.where(dog: current_user.dogs)
    @dogs = current_user.dogs
  end
end
