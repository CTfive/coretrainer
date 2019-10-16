class UsersController < ApplicationController

  def create
    @user = User.create(user_params)
  end


  private

  def user_params
    require(:user).permit(:email, :password)
  end
end
