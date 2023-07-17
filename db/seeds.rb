require 'active_record'
require 'faker'

puts "🌱 Seeding..."

# Replace the values with the actual connection details provided by Render
database_url = 'postgres://backend_xxd8_user:LBzpIg1GcyH9MtmPPAZ0WySjIbwq2b23@dpg-cin43vlph6evlaqpallg-a.oregon-postgres.render.com/backend_xxd8'
ActiveRecord::Base.establish_connection(database_url)

# Define the bills array
bills = [
  {
    meter_no: "204580969",
    date_read: "2023-04-23",
    previous_reading: "200",
    current_reading: "500",
    units_consumed: nil,
    balance: 500,
    date_paid: "2023-05-1",
    client_id: 601,
    employee_id: 595
  },
  {
    meter_no: "204580565",
    date_read: "2023-04-22",
    previous_reading: "045",
    current_reading: "055",
    units_consumed: nil,
    balance: 0,
    date_paid: "2023-05-12",
    client_id: 605,
    employee_id: 603
  },
  {
    meter_no: "204585409",
    date_read: "2023-04-23",
    previous_reading: "3490",
    current_reading: "3500",
    units_consumed: nil,
    balance: 100,
    date_paid: "2023-05-10",
    client_id: 603,
    employee_id: 597
  },
  {
    meter_no: "204580953",
    date_read: "2023-04-22",
    previous_reading: "223",
    current_reading: "354",
    units_consumed: nil,
    balance: 0,
    date_paid: "2023-05-1",
    client_id: 602,
    employee_id: 601
  },
  {
    meter_no: "204580569",
    date_read: "2023-04-23",
    previous_reading: "234",
    current_reading: "300",
    units_consumed: nil,
    balance: 0,
    date_paid: "2023-05-12",
    client_id: 604,
    employee_id: 597
  },
  {
    meter_no: "204580679",
    date_read: "2023-04-23",
    previous_reading: "23",
    current_reading: "55",
    units_consumed: nil,
    balance: 5,
    date_paid: "2023-05-8",
    client_id: 606,
    employee_id: 595
  },
  {
    meter_no: "204580658",
    date_read: "2023-04-23",
    previous_reading: "2023",
    current_reading: "2024",
    units_consumed: nil,
    balance: 0,
    date_paid: "2023-05-1",
    client_id: 607,
    employee_id: 603
  },
  {
    meter_no: "204580900",
    date_read: "2023-04-23",
    previous_reading: "223",
    current_reading: "229",
    units_consumed: nil,
    balance: 1000,
    date_paid: "2023-05-10",
    client_id: 608,
    employee_id: 595
  },
  {
    meter_no: "204580902",
    date_read: "2023-04-23",
    previous_reading: "241",
    current_reading: "355",
    units_consumed: nil,
    balance: 200,
    date_paid: "2023-05-4",
    client_id: 610,
    employee_id: 599
  },
  {
    meter_no: "204580909",
    date_read: "2023-04-23",
    previous_reading: "9876",
    current_reading: "9890",
    units_consumed: nil,
    balance: 0,
    date_paid: "2023-05-10",
    client_id: 609,
    employee_id: 597
  }
]

clients = [
  {
    first_name: "Mark",
    last_name: "Doe",
    email: "mark@gmail.com",
    phone_number: "724290512",
    password: "password123",
    confirm_password: "password123",
    employee_id: 595
  },
  {
    first_name: "Susan",
    last_name: "Mutisya",
    email: "susanmutisya@gmail.com",
    phone_number: "252353676",
    password: "calmination@2",
    confirm_password: "calmination@2",
    employee_id: 596
  },
  {
    first_name: "Lydia",
    last_name: "Cheptoo",
    email: "cheptoo@mix.com",
    phone_number: "743929053",
    password: "password123",
    confirm_password: "password123",
    employee_id: 595
  },
  {
    first_name: "Patrick",
    last_name: "Mutune",
    email: "mutune@microsoft.com",
    phone_number: "776543345",
    password: "mutune123",
    confirm_password: "mutune123",
    employee_id: 597
  },
  {
    first_name: "Esther",
    last_name: "Pendo",
    email: "pendo@gmail.com",
    phone_number: "723460934",
    password: "pendoesther",
    confirm_password: "pendoesther",
    employee_id: 597
  },
  {
    first_name: "Claire",
    last_name: "Doe",
    email: "claire@gmail.com",
    phone_number: "723690512",
    password: "password123",
    confirm_password: "password123",
    employee_id: 598
  },
  {
    first_name: "Mulu",
    last_name: "Mutisya",
    email: "mulu@gmail.com",
    phone_number: "13132096",
    password: "calmination@2",
    confirm_password: "calmination@2",
    employee_id: 597
  },
  {
    first_name: "Faith",
    last_name: "Oluoch",
    email: "oluoch@mix.com",
    phone_number: "1234560797",
    password: "faith@2",
    confirm_password: "faith@2",
    employee_id: 595
  },
  {
    first_name: "Makau",
    last_name: "Mbilu",
    email: "mbilu@microsoft.com",
    phone_number: "2059830698",
    password: "mutumakne123",
    confirm_password: "mutumakne123",
    employee_id: 599
  },
  {
    first_name: "John",
    last_name: "Calvin",
    email: "calvin@gmail.com",
    phone_number: "723460934",
    password: "johnclavin",
    confirm_password: "johnclavin",
    employee_id: 597
  }
]

employees = [
  {
    first_name: "Kaloki",
    last_name: "Muthasya",
    email: "kaloki@work.com",
    location: "Tala",
    client_ids: [601, 603, 608]
  },
  {
    first_name: "Martin",
    last_name: "Luke",
    email: "martin@work.com",
    location: "Nguluni",
    client_ids: [605, 607]
  },
  {
    first_name: "Jessy",
    last_name: "Carlos",
    email: "jessy@work.com",
    location: "Kangundo",
    client_ids: [604, 606, 609]
  },
  {
    first_name: "Purity",
    last_name: "Marks",
    email: "purity@work.com",
    location: "Tala",
    client_ids: [602, 610]
  },
  {
    first_name: "Clause",
    last_name: "Jopekins",
    email: "clause@work.com",
    location: "Tala",
    client_ids: []
  }
]

employee_clients = [
  { employee_id: 595, client_id: 601 },
  { employee_id: 596, client_id: 605 },
  { employee_id: 596, client_id: 607 },
  { employee_id: 597, client_id: 604 },
  { employee_id: 595, client_id: 603 },
  { employee_id: 597, client_id: 606 },
  { employee_id: 595, client_id: 608 },
  { employee_id: 599, client_id: 610 },
  { employee_id: 597, client_id: 609 },
  { employee_id: 598, client_id: 602 }
]


# Create clients
clients.each do |client_attributes|
  client = Client.create(client_attributes)
end

# Create employees
employees.each do |employee_attributes|
  employee = Employee.create(employee_attributes)
  employee.client_ids.each do |client_id|
    employee.clients << Client.find(client_id)
  end
end

# Create employee_clients associations
employee_clients.each do |ec_attributes|
  employee = Employee.find(ec_attributes[:employee_id])
  client = Client.find(ec_attributes[:client_id])
  employee.clients << client
end

# Create bills
bills.each do |bill_attributes|
  Bill.create(bill_attributes)
end

puts "✅ Done seeding!"