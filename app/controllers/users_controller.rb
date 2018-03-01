class UsersController < ApplicationController

  def show
    @user = User.find(params[:user_id])
    @user.favorites
  end

end
