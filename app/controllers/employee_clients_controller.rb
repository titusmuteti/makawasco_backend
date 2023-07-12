class EmployeeClientsController < ApplicationController
  before_action :set_employee_client, only: %i[ show edit update destroy ]

  # GET /employee_clients or /employee_clients.json
  def index
    @employee_clients = EmployeeClient.all
  end

  # GET /employee_clients/1 or /employee_clients/1.json
  def show
  end


  # GET /employee_clients/1/edit
  def edit
  end

  # POST /employee_clients or /employee_clients.json
  def create
   
  end

  # PATCH/PUT /employee_clients/1 or /employee_clients/1.json
  def update
    
  end

  # DELETE /employee_clients/1 or /employee_clients/1.json
  def destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_client
      @employee_client = EmployeeClient.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employee_client_params
      params.fetch(:employee_client, {})
    end
end
