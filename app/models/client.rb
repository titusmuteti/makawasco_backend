class Client < ApplicationRecord
    has_secure_password

    has_many :employee_clients, dependent: :destroy
    has_many :employees, through: :employee_clients, dependent: :destroy
  
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: { minimum: 6 }, confirmation: true

end
