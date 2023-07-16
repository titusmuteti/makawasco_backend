require 'active_record'
require 'faker'

puts "🌱 Seeding..."

# Replace the values with the actual connection details provided by Render
database_url = 'postgres://backend_xxd8_user:LBzpIg1GcyH9MtmPPAZ0WySjIbwq2b23@dpg-cin43vlph6evlaqpallg-a.oregon-postgres.render.com/backend_xxd8'
ActiveRecord::Base.establish_connection(database_url)

CITY_NAMES = ['Tala', 'Nguluni', 'Kathithyamaa']

# 20.times do
#   first_name = Faker::Name.first_name
#   last_name = Faker::Name.last_name
#   email = Faker::Internet.email
#   phone_number = Faker::PhoneNumber.phone_number_with_country_code
#   location = CITY_NAMES.sample

#   employee = Employee.create(
#     first_name: first_name,
#     last_name: last_name,
#     email: email,
#     location: location
#   )

#   client = Client.create(
#     first_name: first_name,
#     last_name: last_name,
#     email: email,
#     phone_number: phone_number,
#     password: '12345678',
#     confirm_password: '12345678',
#     employee_id: employee.id
#   )

#   EmployeeClient.create(employee: employee, client: client)
# end

# 100.times do
#   employee = Employee.order("RANDOM()").first
#   client = employee.clients.order("RANDOM()").first

  Bill.create(
    meter_no: Faker::Number.number(digits: 6).to_s,
    date_read: Faker::Date.between(from: 1.year.ago, to: Date.today),
    previous_reading: Faker::Number.number(digits: 4).to_s,
    current_reading: Faker::Number.number(digits: 4).to_s,
    units_consumed: Faker::Number.number(digits: 3).to_s,
    balance: Faker::Number.decimal(l_digits: 2, r_digits: 2).to_s,
    date_paid: Faker::Date.between(from: 1.year.ago, to: Date.today),
    client_id: client.id,
    employee_id: employee.id
  )
end

# Admin logins
admin_md = Admin.find_or_initialize_by(email: 'md@example.com')
admin_md.password = 'password123'
admin_md.role = 'Managing Director'
admin_md.save!

admin_se = Admin.find_or_initialize_by(email: 'admin_se@example.com')
admin_se.password = 'password123'
admin_se.role = 'Systems Engineer'
admin_se.save!

puts "✅ Done seeding!"