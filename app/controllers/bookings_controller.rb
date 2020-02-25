class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :destroy]

  def show
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @lair = Lair.find(params[:lair_id])
    @booking.lair = @lair
    @booking.total_cost = (@booking.end_date - @booking.start_date).to_i * @booking.lair.price_per_night
    # add JS to dynamically display total cost
    if @booking.save
      redirect_to user_path(current_user)
    else
      render template: "lairs/show"
    end
  end

  def destroy
    @booking.destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :lair_id, :total_cost)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
