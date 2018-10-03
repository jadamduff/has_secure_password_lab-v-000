class UsersController < ApplicationController

  def new

  end

  def create
    if User.create(user_params)

    else

    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end
