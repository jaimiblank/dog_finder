class BookingsController < ApplicationController

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
      raise
      redirect_to @booking, notice: 'Booking was successfully created.'
    else
      raise
      redirect_to dogs_path
    end
    #booking need
    #user
    #dog

    #booking.new
    #to that booking assign a dog and a user
    #save that booking
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
