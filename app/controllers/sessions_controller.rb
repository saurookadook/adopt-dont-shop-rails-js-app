class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    if !params[:provider].nil?
      @user = User.from_omniauth(auth)
    else
      @user = User.find_by(username: user_params[:username])
    end

    if @user.valid?
      @user.save
      set_session(@user.id)
      redirect_to :root
    elsif @user.password.nil?
      @user.password = SecureRandom.hex
      redirect_to :root
    else
      render :new
    end
  end

  def destroy
    session.delete :user_id if !session[:user_id].nil?
    redirect_to :root
  end

  private

  def auth
    request.env['omniauth.auth']
  end
end
