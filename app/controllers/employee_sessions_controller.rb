class EmployeeSessionsController < ApplicationController
  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.find_by(username: employee_params[:username])
    if @employee.authenticate(employee_params[:password])
      set_employee_session(@employee.id)
      flash[:message] = "Successfully logged in!"
      redirect_to :root
    else
      render :new
    end
  end

  def destroy
    session.delete :employee_id if !session[:employee_id].nil?
    redirect_to :root
  end
end
