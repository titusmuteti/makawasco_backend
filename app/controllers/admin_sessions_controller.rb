class AdminSessionsController < ApplicationController
    def create
        admin = Admin.find_by(email: params[:email])
    
        if admin&.authenticate(params[:password])
          # Generate a token or session for admin authentication
          # You can use a library like 'jwt' to generate and manage tokens
          token = JWT.encode({ admin_id: admin.id }, 'your_secret_key', 'HS256')
          render json: { token: token }
        else
          render json: { error: 'Invalid credentials' }, status: :unauthorized
        end
    end
end
