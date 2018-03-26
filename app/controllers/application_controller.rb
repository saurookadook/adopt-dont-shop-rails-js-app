class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || root_path
  end

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def set_user!
    @user ||= User.find(params[:id]) if params[:id]
  end

  def set_session(params)
    session[:user_id] = params[:id]
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in, keys: [:username, :password])
  end
end
