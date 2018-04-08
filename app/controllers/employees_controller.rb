class EmployeesController < ApplicationController
  before_action :set_employee!, only: [:show, :edit, :update, :delete]

  def index
    @employees = Employee.all
  end

  def show
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.valid?
      @employee.save
      set_employee_session(@employee.id)
      flash[:message] = "Account successfully created."
      redirect_to employee_path(@employee)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @employee.update(employee_params)
    if @employee.valid?
      flash[:message] = "Information successfully updated."
      redirect_to employee_path(@employee)
    else
      render :edit
    end
  end

  def destroy
    @employee.destroy
    flash[:message] = "Employee account successfully deleted."
    redirect_to :root
  end
end
