class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    if !params[:provider].nil?
      @user = User.update_or_create(auth)
      finalize_login(@user)
    elsif @user = User.find_by(username: user_params[:username])
      if @user.authenticate(user_params[:password])
        finalize_login(@user)
      end
    else
      render :new
    end
  end

  def destroy
    session.delete :user_id if !session[:user_id].nil?
    flash[:message] = "You have successfully logged out."
    redirect_to :root
  end

  private

  def auth
    request.env['omniauth.auth']
  end

  def finalize_login(user)
    set_session(user.id)
    flash[:message] = "Successfully logged in!"
    redirect_to :root
  end
end
