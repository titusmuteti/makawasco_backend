require 'active_record'
require 'faker'

puts "🌱 Seeding..."

# Replace the values with the actual connection details provided by Render
database_url = 'postgres://backend_xxd8_user:LBzpIg1GcyH9MtmPPAZ0WySjIbwq2b23@dpg-cin43vlph6evlaqpallg-a.oregon-postgres.render.com/backend_xxd8'

ActiveRecord::Base.establish_connection(database_url)



CITY_NAMES = ['Tala', 'Nguluni', 'Kathithyamaa']


20.times do
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
    email = Faker::Internet.email
    phone_number = Faker::PhoneNumber.phone_number_with_country_code
    location = CITY_NAMES.sample
  
    employee = Employee.create(
      first_name: first_name,
      last_name: last_name,
      email: email,
      location: location,
      client_id: Faker::Number.between(from: 1, to: 20)
    )
  
    client = Client.create(
      first_name: first_name,
      last_name: last_name,
      email: email,
      phone_number: phone_number,
      password: '12345678',
      confirm_password: '12345678'
    )
    # employee.update(client_id: client.id)

    employee.update(client_id: client.id)
    client.update(employee_id: employee.id)

    # EmployeeClient.create(employee: employee, client: client)
  end
  

  

# 30.times do
#     date_read = Faker::Date.backward(days: 14)
#     previous_reading = Faker::Number.between(from: 15, to: 100) 
#     current_reading = Faker::Number.between(from: 20, to: 200) 
#     balance = Faker::Number.between(from: 5, to: 1000) 
#     paid = Faker::Boolean.boolean 
#     date_paid = Faker::Date.forward(days: 14)
#     client_id = Faker::Number.between(from: 1, to: 20)
  
#     Bill.create(
#         date_read: date_read,
#         previous_reading: previous_reading,
#         current_reading: current_reading,
#         balance: balance,
#         paid: paid,
#         date_paid: date_paid,
#         client_id: client_id
#     )
#   end
  

puts "✅ Done seeding!"