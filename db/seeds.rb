# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Flat.delete_all

puts 'Creating flats...'
5.times do
  params = {
    name: Faker::Address.community,
    address: Faker::Address.street_address,
    description: Faker::Marketing.buzzwords,
    price_per_night: rand(50..300),
    number_of_guests: rand(1..5)
  }
  Flat.create!(params)
end

puts "Created #{Flat.count} flats"
