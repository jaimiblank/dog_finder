class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @dog = Dog.find(params[:dog_id])
  end

  def create
    raise
    #booking need
    #user
    #dog

    #booking.new
    #to that booking assign a dog and a user
    #save that booking
    
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to @booking, notice: 'Booking was successfully created.'
    else
      render :new
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
