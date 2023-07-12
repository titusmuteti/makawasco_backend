json.extract! client, :id, :first_name, :last_name, :email, :phone_number, :password_digest, :confirm_password, :employee_id, :created_at, :updated_at
json.url client_url(client, format: :json)
