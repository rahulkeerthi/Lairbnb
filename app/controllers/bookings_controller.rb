class BookingsController < ApplicationController
  before_action :set_booking, only: [:destroy]
  before_action :authenticate_user!, only: :create

  # def show
  # end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @lair = Lair.find(params[:lair_id])
    @booking.lair = @lair
    @booking.total_cost = (@booking.end_date - @booking.start_date).to_i * @booking.lair.price_per_night
    @user_bookings = current_user.bookings
    if @booking.save
      redirect_to user_path(current_user)
    else
      render "lairs/show"
    end
  end

  def destroy
    @booking.destroy
    redirect_to user_path(current_user)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :lair_id, :total_cost)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
