class EmployeeClientsController < ApplicationController
  before_action :set_employee_client, only: %i[ show edit update destroy ]

  # GET /employee_clients or /employee_clients.json
  def index
    @employee_clients = EmployeeClient.all
  end

  # GET /employee_clients/1 or /employee_clients/1.json
  def show
  end

  # GET /employee_clients/new
  def new
    @employee_client = EmployeeClient.new
  end

  # GET /employee_clients/1/edit
  def edit
  end

  # POST /employee_clients or /employee_clients.json
  def create
    @employee_client = EmployeeClient.new(employee_client_params)

    respond_to do |format|
      if @employee_client.save
        format.html { redirect_to employee_client_url(@employee_client), notice: "Employee client was successfully created." }
        format.json { render :show, status: :created, location: @employee_client }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @employee_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employee_clients/1 or /employee_clients/1.json
  def update
    respond_to do |format|
      if @employee_client.update(employee_client_params)
        format.html { redirect_to employee_client_url(@employee_client), notice: "Employee client was successfully updated." }
        format.json { render :show, status: :ok, location: @employee_client }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @employee_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_clients/1 or /employee_clients/1.json
  def destroy
    @employee_client.destroy

    respond_to do |format|
      format.html { redirect_to employee_clients_url, notice: "Employee client was successfully destroyed." }
      format.json { head :no_content }
    end
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
