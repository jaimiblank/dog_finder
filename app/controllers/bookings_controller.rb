class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    @user = current_user
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
    @booking.status = 'pending'
    if @booking.save!
      redirect_to dashboard_path, notice: 'Booking request for submitted and waiting for approval.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def approve
    @booking = Booking.find(params[:id])
    if current_user == @booking.dog.user
      if @booking.update(status: 'approved')
        redirect_to dashboard_path, notice: 'Booking approved successfully.'
      else
        redirect_to dashboard_path, alert: 'Failed to approve booking.'
      end
    else
      redirect_to dashboard_path, alert: 'You are not authorized to approve this booking.'
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    if current_user == @booking.dog.user
      if @booking.destroy
        redirect_to dashboard_path, notice: 'Booking rejected successfully.'
      else
        redirect_to dashboard_path, alert: 'Failed to reject booking.'
      end
    else
      redirect_to dashboard_path, alert: 'You are not authorized to reject this booking.'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
