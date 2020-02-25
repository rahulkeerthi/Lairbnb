class LairsController < ApplicationController
  before_action :set_lair, only: [:show, :edit, :update, :destroy]

  def index
    @lairs = Lair.all
  end

  def show; end

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
    params.require(:lair).permit(:title, :location, :description, :price_per_night)
  end

  def set_lair
    @lair = Lair.find(params[:id])
  end
end
