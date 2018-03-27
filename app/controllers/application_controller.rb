class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
  helper_method :current_user

  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || root_path
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  protected

  def set_user!
    @user ||= User.find(params[:id]) if params[:id]
  end

  def user_params
    params.require(:user).permit(:username, :password)
  end

  def set_session(user_id)
    session[:user_id] = user_id
  end
end
