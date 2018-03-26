class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception

  private

  def set_user!
    @user ||= current_user if current_user
  end

  def set_session(params)
    session[:user_id] = params[:id]
  end
end
