class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(username: user_params[:username])
    if @user
      set_session(@user.id)
      redirect_to :root
    else
      render :new
    end
  end

  def destroy
    session.delete :user_id if !session[:user_id].nil?
    redirect_to :root
  end
end
