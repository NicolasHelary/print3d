# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroying everything"

Demand.destroy_all
Category.destroy_all
Offer.destroy_all
Product.destroy_all
User.destroy_all

puts "Creating Users..."
user1 = User.create(first_name: "Nico", email: "nico@leaddev.fr", address: "105 Rue des gnomes", last_name: "one", printer: true, password: "azerty")
user2 = User.create(first_name: "Tojo", email: "tojo@dev.fr", address: "105 Rue du git status", last_name: "two", printer: false, password: "azerty")
user3 = User.create(first_name: "Romu", email: "romualdo@dev.fr", address: "105 Rue de la navbar", last_name: "three", printer: true, password: "azerty")
user4 = User.create(first_name: "Bry", email: "bry@dev.fr", address: "105 Rue des seeds", last_name: "four", printer: false, password: "azerty")
user5 = User.create(first_name: "Jean Loup", email: "Jeanloup@TAdev.fr", address: "105 Rue des tickets", last_name: "five", printer: false, password: "azerty")
puts "Users created !"

puts "creating products..."
product1 = Product.create(name: "Can opener",
                    description: "open cans easily",
                    file3d: "https://cdn.thingiverse.com/assets/6b/8c/69/44/3a/CanLidOpenerLid.stl")
product2 = Product.create(name: "Beer Crate",
                    description: "to store your beers",
                    file3d: "https://cdn.thingiverse.com/assets/e1/78/13/5d/2d/beer_crate_18650.stl")
product3 = Product.create(name: "Disk Rack Roller",
                    description: "replacement of upper disk",
                    file3d: "https://cdn.thingiverse.com/assets/90/8c/78/6d/5b/roller_pulley.stl")
product4 = Product.create(name: "Air ventilation valve",
                    description: "replacement of upper disk",
                    file3d: "https://cdn.thingiverse.com/assets/3b/ac/61/a5/bd/Klapan_1.stl")
product5 = Product.create(name: "Ice dragon",
                    description: "to store your beers",
                    file3d: "https://cdn.thingiverse.com/assets/b0/e3/13/54/87/ARTICULATED_ice_dragon_fixed_p1.stl")
product6 = Product.create(name: "T-Rex",
                    description: "replacement of upper disk",
                    file3d: "https://cdn.thingiverse.com/assets/4d/6e/1d/fc/35/103_Assembly_T-Rex_v7.stl")
product7 = Product.create(name: "Homer sponge holder",
                    description: "replacement of upper disk",
                    file3d: "https://cdn.thingiverse.com/assets/57/13/25/ec/71/Sponge_holder.stl")
product8 = Product.create(name: "Pocket catapult",
                    description: "to store your beers",
                    file3d: "https://cdn.thingiverse.com/assets/fa/1b/a2/b7/b1/Full_set_Catapult.stl")
product9 = Product.create(name: "Reel Holder",
                    description: "replacement of upper disk",
                    file3d: "https://cdn.thingiverse.com/assets/c8/05/ff/16/6c/Frame.stl")
product10 = Product.create(name: "Plug cover",
                    description: "replacement of upper disk",
                    file3d: "https://cdn.thingiverse.com/assets/f7/e5/56/14/08/12PlugCover.stl")
puts "Products Created !"

puts "Creating Categories..."
category1 = Category.create(name: "Animals & Pets")
category2 = Category.create(name: "Architecture")
category3 = Category.create(name: "Art & Abstract")
category4 = Category.create(name: "Cars & Vehicles")
category5 = Category.create(name: "Characters & Creatures")

category6 = Category.create(name: "Cultural Heritage & History")
category7 = Category.create(name: "Electronics & Gadgets")
category8 = Category.create(name: "Fashion & Style")
category9 = Category.create(name: "Food & Drink")
category10 = Category.create(name: "Furniture & Home")

category11 = Category.create(name: "Music")
category12 = Category.create(name: "Nature & Plants")
category13 = Category.create(name: "News & Politics")
category14 = Category.create(name: "People")
category15 = Category.create(name: "Places & Travel")

category16 = Category.create(name: "Science & Technology")
category17 = Category.create(name: "Sports & Fitness")
category18 = Category.create(name: "Weapons & Military")

puts "Categories Created !"

puts "Creating Demands..."
demand1 = Demand.create(proposed_price: 15.00, client_id: user2.id, product_id: product1.id, comment: "No comment")
demand2 = Demand.create(proposed_price: 10.00, client_id: user2.id, product_id: product2.id, comment: "No comment")
demand3 = Demand.create(proposed_price: 9.99, client_id: user2.id, product_id: product3.id, comment: "No comment")
demand4 = Demand.create(proposed_price: 2.00, client_id: user4.id, product_id: product4.id, comment: "No comment")
demand5 = Demand.create(proposed_price: 300.15, client_id: user4.id, product_id: product5.id, comment: "No comment")
puts "Demands Created !"

puts "Creating Offers..."
offer1 = Offer.create(price: 15.00, status: 1, client_score: 5, printer_score: 5, demand_id: demand1.id, printer_id: user1.id)
offer2 = Offer.create(price: 15.00, status: 1, client_score: 5, printer_score: 5, demand_id: demand1.id, printer_id: user1.id)
offer3 = Offer.create(price: 15.00, status: 1, client_score: 5, printer_score: 5, demand_id: demand1.id, printer_id: user3.id)
offer4 = Offer.create(price: 15.00, status: 1, client_score: 5, printer_score: 5, demand_id: demand1.id, printer_id: user3.id)
offer5 = Offer.create(price: 15.00, status: 1, client_score: 5, printer_score: 5, demand_id: demand1.id, printer_id: user1.id)
puts "Offers Created !"

puts "THAT'S ALL FOLKS !!!"
