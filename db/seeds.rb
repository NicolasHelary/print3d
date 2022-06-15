# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "creating seeds"

user1 = User.new(first_name: "Nico", last_name: "Romualdo", email: "ok@ok.com", password: "azerty", address: "21 rue Haxo", printer: true)
user1.save!

product1 = Product.new(name: "coucou", description: "coucoucoucou")
product1.save!

demand1 = Demand.new(client_id: user1.id, product_id: product1.id, comment: "10 caractères minimum", proposed_price: 23)
demand1.save

puts "created successfully"
