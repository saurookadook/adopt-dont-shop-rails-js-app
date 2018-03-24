class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
  helper_method :location

  def location
    self.city + ", " + self.state
  end

  private

  def set_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def set_session(params)
    session[:user_id] = params[:id]
  end
end
