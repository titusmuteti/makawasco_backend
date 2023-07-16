require 'active_record'
require 'faker'

puts "🌱 Seeding..."

# Replace the values with the actual connection details provided by Render
database_url = 'postgres://backend_xxd8_user:LBzpIg1GcyH9MtmPPAZ0WySjIbwq2b23@dpg-cin43vlph6evlaqpallg-a.oregon-postgres.render.com/backend_xxd8'
ActiveRecord::Base.establish_connection(database_url)


clients = [
  {
      first_name: "Mark",
      last_name: "Doe",
      email: "mark@gmail.com",
      phone_number: "724290512",
      password: "password123",
      confirm_password: "password123",
      employee_id: 5
    },
    {
      first_name: "Susan",
      last_name: "Mutisya",
      email: "susanmutisya@gmail.com",
      phone_number: "252353676",
      password: "calmination@2",
      confirm_password: "calmination@2",
      employee_id: 2
    },
    {
      first_name: "Lydia",
      last_name: "Cheptoo",
      email: "cheptoo@mix.com",
      phone_number: "743929053",
      password: "password123",
      confirm_password: "password123",
      employee_id: 5
    },
    {
      first_name: "Patrick",
      last_name: "Mutune",
      email: "mutune@microsoft.com",
      phone_number: "776543345",
      password: "mutune123",
      confirm_password: "mutune123",
      employee_id: 1
    },
    {
      first_name: "Esther",
      last_name: "Pendo",
      email: "pendo@gmail.com",
      phone_number: "723460934",
      password: "pendoesther",
      confirm_password: "pendoesther",
      employee_id: 3
    },
    {
      first_name: "Claire",
      last_name: "Doe",
      email: "claire@gmail.com",
      phone_number: "723690512",
      password: "password123",
      confirm_password: "password123",
      employee_id: 2
    },
    {
      first_name: "Mulu",
      last_name: "Mutisya",
      email: "mulu@gmail.com",
      phone_number: "13132096",
      password: "calmination@2",
      confirm_password: "calmination@2",
      employee_id: 2
    },
    {
      first_name: "Faith",
      last_name: "Oluoch",
      email: "oluoch@mix.com",
      phone_number: "1234560797",
      password: "faith@2",
      confirm_password: "faith@2",
      employee_id: 5
    },
    {
      first_name: "Makau",
      last_name: "Mbilu",
      email: "mbilu@microsoft.com",
      phone_number: "2059830698",
      password: "mutumakne123",
      confirm_password: "mutumakne123",
      employee_id: 4
    },
    {
      first_name: "John",
      last_name: "Calvin",
      email: "calvin@gmail.com",
      phone_number: "723460934",
      password: "johnclavin",
      confirm_password: "johnclavin",
      employee_id: 1
    }
]
Client.create(clients)



bills = [
  {
    meter_no: "204580969",
    date_read: "2023-04-23",
    previous_reading: "200",
    current_reading: "500",
    units_consumed: nil,
    balance: nil,
    date_paid: "2023-05-1",
    client_id: 1,
    employee_id: 5
  },
  {
    meter_no: "204580565",
    date_read: "2023-04-22",
    previous_reading: "045",
    current_reading: "055",
    units_consumed:nil,
    balance: nil,
    date_paid: "2023-05-12",
    client_id: 5,
    employee_id: 3
  },
  {
    meter_no: "204585409",
    date_read: "2023-04-23",
    previous_reading: "3490",
    current_reading: "3500",
    units_consumed: nil,
    balance: nil,
    date_paid: "2023-05-10",
    client_id: 3,
    employee_id: 2
  },
  {
    meter_no: "204580953",
    date_read: "2023-04-22",
    previous_reading: "223",
    current_reading: "354",
    units_consumed: nil,
    balance: nil,
    date_paid: "2023-05-1",
    client_id: 2,
    employee_id: 1
  },
  {
    meter_no: "204580569",
    date_read: "2023-04-23",
    previous_reading: "234",
    current_reading: "300",
    units_consumed: nil,
    balance: nil,
    date_paid: "2023-05-12",
    client_id: 4,
    employee_id: 2
  },
  {
    meter_no: "204580679",
    date_read: "2023-04-23",
    previous_reading: "23",
    current_reading: "55",
    units_consumed: nil,
    balance: nil,
    date_paid: "2023-05-8",
    client_id: 6,
    employee_id: 5
  },
  {
    meter_no: "204580658",
    date_read: "2023-04-23",
    previous_reading: "2023",
    current_reading: "2024",
    units_consumed: nil,
    balance: nil,
    date_paid: "2023-05-1",
    client_id: 7,
    employee_id: 3
  },
  {
    meter_no: "204580900",
    date_read: "2023-04-23",
    previous_reading: "223",
    current_reading: "229",
    units_consumed: nil,
    balance: nil,
    date_paid: "2023-05-10",
    client_id: 8,
    employee_id: 5
  },
  {
    meter_no: "204580902",
    date_read: "2023-04-23",
    previous_reading: "241",
    current_reading: "355",
    units_consumed: nil,
    balance: nil,
    date_paid: "2023-05-4",
    client_id: 10,
    employee_id: 4
  },
  {
    meter_no: "204580909",
    date_read: "2023-04-23",
    previous_reading: "9876",
    current_reading: "9890",
    units_consumed: nil,
    balance: nil,
    date_paid: "2023-05-10",
    client_id: 9,
    employee_id: 2
  }
]
Bill.create(bills)

bills.each do |consumed_units|
  previous_reading = consumed_units[:previous_reading].to_i
  current_reading = consumed_units[:current_reading].to_i

  consumed_units[:units_consumed] = current_reading - previous_reading

  Bill.create(consumed_units)
end

employees = [
  {
      first_name: "Kaloki",
      last_name: "muthasya",
      email: "kaloki@work.com",
      location: "Tala",
      client_id: [3,8,10]
    },
    {
      first_name: "Martin",
      last_name: "Luke",
      email: "martin@work.com",
      location: "Nguluni",
      client_id: 1
    },
    {
      first_name: "Jessy",
      last_name: "Carlos",
      email: "jessy@work.com",
      location: "Kangundo",
      client_id: [5,4]
    },
    {
      first_name: "Purity",
      last_name: "Marks",
      email: "purity@work.com",
      location: "Tala",
      client_id: [3,9,10]
    },
    {
      first_name: "Clause",
      last_name: "Jopekins",
      email: "clause@work.com",
      location: "Tala",
      client_id: [2,6,7]
    }
]
Employee.create(employees)


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