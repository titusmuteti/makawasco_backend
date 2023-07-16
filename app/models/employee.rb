class Employee < ApplicationRecord
    has_many :bills, dependent: :destroy
    has_many :employee_clients
    has_many :clients, through: :employee_clients

    validates :email, presence: true, uniqueness: true
end
