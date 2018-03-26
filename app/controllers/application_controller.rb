class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception

  private

  def set_user!
    @user ||= User.find(params[:id]) if params[:id] 
  end

  def set_session(params)
    session[:user_id] = params[:id]
  end
end
