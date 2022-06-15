# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroying everything"
User.destroy_all
Product.destroy_all
Category.destroy_all
Demand.destroy_all
Offer.destroy_all

puts "Creating Users..."
user1 = User.new(first_name: "Nico", e_mail: "nico@leaddev.fr", address: "105 Rue des gnomes", last_name: "one", printer: true, password: "azerty")
user2 = User.new(first_name: "Tojo", e_mail: "tojo@dev.fr", address: "105 Rue du git status", last_name: "two", printer: false, password: "azerty")
user3 = User.new(first_name: "Romu", e_mail: "romualdo@dev.fr", address: "105 Rue de la navbar", last_name: "three", printer: true, password: "azerty")
user4 = User.new(first_name: "Bry", e_mail: "bry@dev.fr", address: "105 Rue des seeds", last_name: "four", printer: false, password: "azerty")
user5 = User.new(first_name: "Jean Loup", e_mail: "Jeanloup@TAdev.fr", address: "105 Rue des tickets", last_name: "five", printer: false, password: "azerty")
puts "Users created !"

puts "creating products..."
prod1 = Product.new(name: "Can opener",
                    description: "open cans easily",
                    file3d: "https://cdn.thingiverse.com/assets/6b/8c/69/44/3a/CanLidOpenerLid.stl")
prod2 = Product.new(name: "Beer Crate",
                    description: "to store your beers",
                    file3d: "https://cdn.thingiverse.com/assets/e1/78/13/5d/2d/beer_crate_18650.stl")
prod3 = Product.new(name: "Disk Rack Roller",
                    description: "replacement of upper disk",
                    file3d: "https://cdn.thingiverse.com/assets/90/8c/78/6d/5b/roller_pulley.stl")
prod4 = Product.new(name: "Air ventilation valve",
                    description: "replacement of upper disk",
                    file3d: "https://cdn.thingiverse.com/assets/3b/ac/61/a5/bd/Klapan_1.stl")
prod5 = Product.new(name: "Ice dragon",
                    description: "to store your beers",
                    file3d: "https://cdn.thingiverse.com/assets/b0/e3/13/54/87/ARTICULATED_ice_dragon_fixed_p1.stl")
prod6 = Product.new(name: "T-Rex",
                    description: "replacement of upper disk",
                    file3d: "https://cdn.thingiverse.com/assets/4d/6e/1d/fc/35/103_Assembly_T-Rex_v7.stl")
prod7 = Product.new(name: "Homer sponge holder",
                    description: "replacement of upper disk",
                    file3d: "https://cdn.thingiverse.com/assets/57/13/25/ec/71/Sponge_holder.stl")
prod8 = Product.new(name: "Pocket catapult",
                    description: "to store your beers",
                    file3d: "https://cdn.thingiverse.com/assets/fa/1b/a2/b7/b1/Full_set_Catapult.stl")
prod9 = Product.new(name: "Reel Holder",
                    description: "replacement of upper disk",
                    file3d: "https://cdn.thingiverse.com/assets/c8/05/ff/16/6c/Frame.stl")
prod10 = Product.new(name: "Plug cover",
                    description: "replacement of upper disk",
                    file3d: "https://cdn.thingiverse.com/assets/f7/e5/56/14/08/12PlugCover.stl")
puts "Products Created !"

puts "Creating Categories..."
category1 = Category.new(name: "Sport")
category2 = Category.new(name: "Kitchen")
category3 = Category.new(name: "Pleasure")
category4 = Category.new(name: "Movies Goodies")
category5 = Category.new(name: "Statues")
puts "Categories Created !"

puts "Creating Demands..."
demand1 = Demand.new(proposed_price: 15.00, client_id: user2.id, product_id: product1.id, comment: "No comment")
demand2 = Demand.new(proposed_price: 10.00, client_id: user2.id, product_id: product2.id, comment: "No comment")
demand3 = Demand.new(proposed_price: 9.99, client_id: user2.id, product_id: product3.id, comment: "No comment")
demand4 = Demand.new(proposed_price: 2.00, client_id: user4.id, product_id: product4.id, comment: "No comment")
demand5 = Demand.new(proposed_price: 300.15, client_id: user4.id, product_id: product5.id, comment: "No comment")
puts "Demands Created !"

puts "Creating Offers..."
offer1 = Offer.new(price: 15,00, status: "Pending", client_score: 5, printer_score: 5, demand_id: demand1.id, printer_id: user1.id)
offer1 = Offer.new(price: 15,00, status: "Pending", client_score: 5, printer_score: 5, demand_id: demand1.id, printer_id: user1.id)
offer1 = Offer.new(price: 15,00, status: "Pending", client_score: 5, printer_score: 5, demand_id: demand1.id, printer_id: user3.id)
offer1 = Offer.new(price: 15,00, status: "Pending", client_score: 5, printer_score: 5, demand_id: demand1.id, printer_id: user3.id)
offer1 = Offer.new(price: 15,00, status: "Pending", client_score: 5, printer_score: 5, demand_id: demand1.id, printer_id: user1.id)
puts "Offers Created !"

puts "THAT'S ALL FOLKS !!!"
