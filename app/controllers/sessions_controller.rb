class SessionsController < ApplicationController

  def new

  end

  def create
    @user = User.find_by(name: params[:name])
    if !@user.nil?
      @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to login_path
    end
  end

end
