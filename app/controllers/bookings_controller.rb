class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    @dog = Dog.find(params[:dog_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.dog = Dog.find(params[:dog_id])
    if @booking.save
      redirect_to dog_booking_path(@booking.dog, @booking.user), notice: 'Booking was successfully created.'
    else
      render :new, notice: 'Booking was not created.'
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_url, notice: 'Booking deleted.'
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
