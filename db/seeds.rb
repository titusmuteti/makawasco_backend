require 'active_record'
require 'faker'

puts "🌱 Seeding..."

ActiveRecord::Base.establish_connection({
  adapter: 'postgresql',
  encoding: 'unicode',
  # Replace the values with the actual connection details provided by Render
  host: 'dpg-cin43vlph6evlaqpallg-a.oregon-postgres.render.com',
  port: 5432,
  username: 'backend_xxd8_user',
  password: 'LBzpIg1GcyH9MtmPPAZ0WySjIbwq2b23',
  database: 'backend_xxd8'
})

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

  employee.update(client_id: client.id)
  client.update(employee_id: employee.id)
end

puts "✅ Done seeding!"
