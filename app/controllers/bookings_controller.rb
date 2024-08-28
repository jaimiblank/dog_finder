class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @dog = params[:dog_id]
  end

  def create
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
    params.require(:booking).permit(:name, :date, :time, :location)
  end

end
