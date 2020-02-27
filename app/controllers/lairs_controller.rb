class LairsController < ApplicationController
  before_action :set_lair, only: [:show, :edit, :update, :destroy, :find_user_bookings]
  before_action :authenticate_user!, only: [ :new ]

  def index
    @found = true
    # boolean to check if current user is hero or not
    if params[:query].blank?
      @lairs = Lair.all
    else
      @lairs = Lair.search_by_title_and_location(params[:query])
      if @lairs.empty?
        @found = false
        @lairs = Lair.all
      end
    end
  end

  def show
    # boolean @owner to know whether the current user is the owner of the lair
    @user = @lair.user
    @owner = @user == current_user
    @booking = Booking.new
    @user_bookings = user_signed_in? ? find_user_bookings : []
  end

  def new
    @lair = Lair.new
  end

  def create
    @lair = Lair.new(lair_params)
    @lair.user = current_user # store the user or user id??
    @lair.is_hero_lair = current_user.is_hero # set lair to same boolean as creator hero status
    if @lair.save
      redirect_to lair_path(@lair)
    else
      render :new
    end
  end

  def edit; end

  def update
    if @lair.update(lair_params)
      redirect_to lair_path(@lair)
    else
      render :edit
    end
  end

  def destroy
    @lair.destroy
    redirect_to user_path(current_user)
  end

  private

  def lair_params
    params.require(:lair).permit(:title, :location, :description, :price_per_night, photos: [])
  end

  def set_lair
    @lair = Lair.find(params[:id])
  end

  def find_user_bookings
    bookings = []
    current_user.bookings.each do |booking|
      bookings << booking if booking.lair == @lair
    end
    bookings
  end
end
