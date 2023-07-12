class EmployeesController < ApplicationController
  before_action :set_employee, only: %i[ show edit update destroy ]

  # GET /employees or /employees.json
  def index
    @employees = Employee.all
    render json: @employees
  end

  # GET /employees/1 or /employees/1.json
  def show
  end

  # GET /employees/1/edit
  def edit
  end

  # POST /employees or /employees.json
  def create
  end

  # PATCH/PUT /employees/1 or /employees/1.json
  def update
  end

  # DELETE /employees/1 or /employees/1.json
  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee
      @employee = Employee.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employee_params
      params.require(:employee).permit(:first_name, :last_name, :email, :location, :client_id)
    end
end
