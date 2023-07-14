class ClientsController < ApplicationController
  # before_action :set_client, only: %i[ show edit update destroy ]
  rescue_from ActiveRecord::RecordInvalid, with: :record_invalid

  # GET /clients or /clients.json
  def index
    clients = Client.all
    render json: clients, include: [:employees], status: :ok
  end

  # GET /clients/1 or /clients/1.json
  def show
    client = Client.find_by_id(id: session[:client_id])
      if client
        # byebug
        render json: client, include: [:employees], status: :ok
      else
        render json: { error: "You must be logged in to access this content" }, status: :unauthorized
      end
  end

  # GET /clients/new
  def new
    @client = Client.new
  end

  # GET /clients/1/edit
  def edit
  end

  # POST /clients or /clients.json
  def create
    client = Client.new(client_params)
      
    if client.save
      # byebug
      session[:client_id] = client.id
      render json: client, status: :created
    else
      render json: { error: client.errors.full_messages }, status: :unprocessable_entity
    end
  end


  # DELETE /clients/1 or /clients/1.json
  def destroy
    client = Client.find_by_id(params[:id])
    if client
      client.destroy
      render json: { message: "Client deleted" }, status: :ok
    else
      render json: { error: "Client not found" }, status: :not_found
    end
  end

  private
  def record_invalid
    render json: {error: "Invalid user"}, status: :unprocessable_entity
  end

    # Only allow a list of trusted parameters through.
    def client_params
      params.require(:client).permit(:first_name, :last_name, :email, :phone_number, :password, :confirm_password)
      # params.require(:client).permit(:first_name, :last_name, :email, :phone_number, :password, :confirm_password, :employee_id)
    end
end
