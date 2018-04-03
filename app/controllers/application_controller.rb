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

  def current_employee
    @current_employee ||= Employee.find(sessions[:employee_id]) if session[:employee_id]
  end

  protected

  def set_user!
    @user ||= User.find(params[:id]) if params[:id]
  end

  def set_employee!
    @employee = Employee.find(params[:id]) if params[:id]
  end

  def set_session(user_id)
    session[:user_id] = user_id
  end

  def set_employee_session(employee_id)
    session[:employee_id] = employee_id
  end

  def set_pet
    @pet ||= Pet.find(params[:id]) if [params[:id]]
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :city, :state,
      pets_attributes:[:name, :nickname, :animal, :age, :breed, :info, :shelter_id, :user_id])
  end

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :username, :email, :password)
  end

end
