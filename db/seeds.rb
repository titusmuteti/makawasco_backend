# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# require 'active_record'

# ActiveRecord::Base.establish_connection(
#   adapter: 'postgresql',
#   host: 'https://makawasco-backend.onrender.com/',
#   database: 'backend_xxd8',
#   username: 'backend_xxd8_user',
#   password: 'LBzpIg1GcyH9MtmPPAZ0WySjIbwq2b23'
# )

require 'active_record'

# Replace the values with the actual connection details provided by Render
database_url = 'postgres://backend_xxd8_user:LBzpIg1GcyH9MtmPPAZ0WySjIbwq2b23@dpg-cin43vlph6evlaqpallg-a.oregon-postgres.render.com/backend_xxd8'

ActiveRecord::Base.establish_connection(database_url)



Client.create(first_name: "John", last_name: "dave",)