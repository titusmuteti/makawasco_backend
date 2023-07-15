class Admin < ApplicationRecord
    has_secure_password

    def authenticate(password)
        # Implement the logic to compare the provided password with the stored password hash
        # You can use a library like 'bcrypt' to handle password hashing and verification
        BCrypt::Password.new(password_digest).is_password?(password)
    end
end
