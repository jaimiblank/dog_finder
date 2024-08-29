class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:dashboard]

  def home
    @dogs = Dog.all.limit(10)
  end

  def dashboard
    @bookings = current_user.bookings
    @dogs = current_user.dogs
  end
end
