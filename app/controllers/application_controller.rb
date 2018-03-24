class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :set_session

  def set_session(params)
    session[:user_id] = params[:id]
  end
  
  private

  def set_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
