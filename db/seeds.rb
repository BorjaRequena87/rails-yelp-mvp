# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all

puts "Creating restaurants..."
noodles = { name: "I love Noodles", address: "Hoxton", category: "chinese" }
pasta_muswell = { name: "I love Pasta", address: "Muswell Hill", category: "italian" }
tapas = { name: "I love French Tapas, even if don't exist", address: "Hampstead", category: "french" }
franco_manca = { name: "Franco Manca", address: "Greenwich", category: "italian" }
fereshpolo = { name: "Feresh Polo from Belgium", address: "Oxford", category: "belgian" }

[noodles, pasta_muswell, tapas, franco_manca, fereshpolo].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
