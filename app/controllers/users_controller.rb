class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    # @owner to give additional options to the user if he is on his own profile page
    @user = User.find(params[:id])
    @owner = @user == current_user ? true : false
  end
end
