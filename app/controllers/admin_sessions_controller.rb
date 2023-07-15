require 'jwt'

class AdminSessionsController < ApplicationController
  def create
    admin = Admin.find_by(email: params[:email])

    if admin&.authenticate(params[:password]) && admin.role == params[:role]
      # Generate a token or session for admin authentication
      # You can use a library like 'jwt' to generate and manage tokens
      token = generate_token(admin.id)
      render json: { token: token }
    else
      render json: { error: 'Invalid credentials' }, status: :unauthorized
    end
  end

  private

  def generate_token(admin_id)
    # Generate a token using JWT library or any other token generation mechanism
    # For example, using the 'jwt' gem:
    payload = { admin_id: admin_id }
    JWT.encode(payload, Rails.application.secrets.secret_key_base)
  end
end
