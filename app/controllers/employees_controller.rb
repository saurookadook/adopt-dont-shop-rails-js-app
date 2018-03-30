class EmployeesController < ApplicationController
  before_action :set_employee!, only: [:show, :edit, :delete]

  def index
    @employees = Employee.all
  end

  def show
  end

  def new
    @employee = Employee.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
    @employee.destroy
    flash[:message] = "Employee account successfully deleted."
    redirect_to :root
  end
end
