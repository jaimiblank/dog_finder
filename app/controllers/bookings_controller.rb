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
    @dog = Dog.find(params[:dog_id])
    @booking.dog = @dog
    @booking.user = current_user
    if @booking.save
      redirect_to dashboard_path, notice: 'Booking was successfully created.'
      # LINK for redirect hast to be add -> Dashboard
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to new_dog_booking_path, notice: 'Booking deleted.'
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
