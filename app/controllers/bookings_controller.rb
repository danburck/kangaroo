class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking)
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.user = current_user
    @booking.bartender = Bartender.find(params[:bartender_id])
    if @booking.save
      redirect_to @booking
    else
      render :show
    end
  end

  def show
    # @booking = Booking.find(params[:id])
    # @booking = policy_scope(Booking).find(params[:id])
    @booking = authorize Booking.find(params[:id])
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:date)
  end
end
