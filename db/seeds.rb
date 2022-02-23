# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Destroying all data"
Flat.destroy_all
puts "All data destroyed"
puts "Creating data"
options = %w[Villa Flats House Townhouse]
10.times do
  Flat.create(
    name: "#{Faker::Company.name} #{options.sample} in #{Faker::Address.city}",
    address: Faker::Address.street_address,
    description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
    price_per_night: rand(40..100),
    number_of_guests: rand(1..6)
  )
end
puts "All data destroyed"
