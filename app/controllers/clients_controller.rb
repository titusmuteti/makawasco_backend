class ClientsController < ApplicationController
  before_action :set_client, only: %i[ show edit update destroy ]

  # GET /clients or /clients.json
  def index
    @clients = Client.all
    render json: @clients
  end

  # # GET /clients/1 or /clients/1.json
  # def show
  # end

  # # GET /clients/1/edit
  # def edit
  # end

  # # POST /clients or /clients.json
  # def create
    
  # end

  # # PATCH/PUT /clients/1 or /clients/1.json
  # def update

  # end

  # # DELETE /clients/1 or /clients/1.json
  # def destroy
   
  # end

  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_client
  #     @client = Client.find(params[:id])
  #   end

  #   # Only allow a list of trusted parameters through.
  #   def client_params
  #     params.require(:client).permit(:first_name, :last_name, :email, :phone_number, :password_digest, :confirm_password, :employee_id)
  #   end
end
