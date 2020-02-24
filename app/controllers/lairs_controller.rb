class LairsController < ApplicationController
  before_action :set_lair, only: [:show, :edit, :destroy]

  def index
    @lairs = Lair.all
  end

  def show; end

  def new
    @lair = Lair.new
  end

  def create
    @lair = Lair.new(lair_params)
    @lair.user_id = @user.id # store the user or user id??
    @user.is_hero ? @lair.is_hero_lair = true : @lair.is_hero_lair = false # check if creator is hero then sets lair hero status accordingly
    if @lair.save
      redirect_to lair_path(@lair)
    else
      render :new
    end
  end

  def edit; end

  def update
    @lair = Lair.new(lair_params)
    if @lair.update(lair_params)
      redirect_to lair_path(@lair)
    else
      render :edit
    end
  end

  def destroy
    @lair.destroy
    redirect_to user_path(@user)
  end

  private

  def lair_params
    params.require(:lair).permit(:title, :location, :description, :price_per_night)
  end

  def set_lair
    @lair = Lair.find(params[:id])
  end
end
