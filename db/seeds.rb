# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants"
Restaurant.create!(name: "Beef burgers", address: "33 Oak Road, London, GR1 1GB", category: "french")
puts "Created Beef burgers"
Restaurant.create!(name: "Luigi pasta'pizza", address: "22 High Road, London, EC2 6EY", category: "italian")
puts "Created Luigi pasta'pizza"
Restaurant.create!(name: "Pancakes", address: "12 Court Road, London, WE1 4GB", category: "belgian")
puts "Created Pancakes"
Restaurant.create!(name: "Sushi eaters", address: "33 Shoreditch, London, GT5 3GB", category: "japanese")
puts "Created Sushi eaters"
Restaurant.create!(name: "Eat chinese", address: "33 Oak Road, London, GR1 1GB", category: "chinese")
puts "Created Eat chinese"

puts "Finished! created #{Restaurant.count} resturants."
