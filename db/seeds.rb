# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroying everything"

Demand.destroy_all
ProductCategory.destroy_all
Category.destroy_all
Offer.destroy_all
Product.destroy_all
User.destroy_all

puts "Creating Users..."
user1 = User.create(first_name: "Nico", email: "nico@leaddev.fr", address: "17 rue Sainte, Marseille", last_name: "One", printer: true, password: "azerty")
user2 = User.create(first_name: "Tojo", email: "tojo@dev.fr", address: "66 rue d'Aubagne, Marseille", last_name: "Two", printer: false, password: "azerty")
user3 = User.create(first_name: "Romu", email: "romualdo@dev.fr", address: "23 rue de la République, Marseille", last_name: "Three", printer: true, password: "azerty")
user4 = User.create(first_name: "Bry", email: "bry@dev.fr", address: "3 rue des Catalans, Marseille", last_name: "Four", printer: false, password: "azerty")
user5 = User.create(first_name: "Jean-Loup", email: "Jeanloup@TAdev.fr", address: "10 rue Pascal, Marseille", last_name: "Five", printer: false, password: "azerty")

user6 = User.create(first_name: "John", email: "john@gmail.com", address: "590 avenue du Prado, Marseille", last_name: "Six", printer: false, password: "azerty")
user7 = User.create(first_name: "Steve", email: "steve@gmail.com", address: "29 rue de Peypagan, Aubagne", last_name: "Seven", printer: false, password: "azerty")
user8 = User.create(first_name: "Elon", email: "elonp@gmail.com", address: "158 Bd Paul Cézanne, Gardanne", last_name: "Eight", printer: false, password: "azerty")
user9 = User.create(first_name: "Mike", email: "mike@gmail.com", address: "13 Cr Mirabeau, 13100 Aix-en-Provence", last_name: "Nine", printer: false, password: "azerty")
user10 = User.create(first_name: "Hector", email: "hector@gmail.com", address: "16 Bd Victor Hugo, Nice", last_name: "Ten", printer: false, password: "azerty")

user11 = User.create(first_name: "Stan", email: "stan@gmail.com", address: "2 rue Lafon, Marseille", last_name: "Smith", printer: false, password: "azerty")
user12 = User.create(first_name: "Kevin", email: "kevin@gmail.com", address: "22 rue Paradis, Marseille", last_name: "Dupont", printer: false, password: "azerty")
user13 = User.create(first_name: "Renée", email: "renee@gmail.com", address: "3 rue Rodolphe Pollak, Marseille", last_name: "Dupont", printer: false, password: "azerty")
user14 = User.create(first_name: "Martin", email: "martin@gmail.com", address: "17 rue Barbaroux, Marseille", last_name: "Martin", printer: false, password: "azerty")
user15 = User.create(first_name: "Michelle", email: "michelle@gmail.com", address: "72 rue François Moisson, Marseille", last_name: "Philippe", printer: false, password: "azerty")

user16 = User.create(first_name: "Hector", email: "hector@gmail.com", address: "73 chemin du Roucas Blanc, Marseille", last_name: "Ticolis", printer: false, password: "azerty")
user17 = User.create(first_name: "Jean", email: "jean@gmail.com", address: "9 rue des Flots Bleus, Marseille", last_name: "Li", printer: false, password: "azerty")
user18 = User.create(first_name: "Alain", email: "alainproviste@gmail.com", address: "161 rue du Commandant Rolland Marseille", last_name: "Proviste", printer: false, password: "azerty")
user19 = User.create(first_name: "Alain", email: "alainprost@gmail.com", address: "28 Boulevard Barral, Marseille", last_name: "Prost", printer: false, password: "azerty")
user20 = User.create(first_name: "Philippe", email: "philippe@gmail.com", address: "48 rue Auguste Blanqui, Marseille", last_name: "Katerine", printer: false, password: "azerty")
user21 = User.create(first_name: "Mimi", email: "mimi@gmail.com", address: "17 Boulevard Cassini, Marseille", last_name: "Mathy", printer: false, password: "azerty")
puts "Users created !"

link1 = "https://cdn.thingiverse.com/assets/6b/8c/69/44/3a/CanLidOpenerLid.stl"
link2 = "https://cdn.thingiverse.com/assets/e1/78/13/5d/2d/beer_crate_18650.stl"
link3 = "https://cdn.thingiverse.com/assets/90/8c/78/6d/5b/roller_pulley.stl"
link4 = "https://cdn.thingiverse.com/assets/3b/ac/61/a5/bd/Klapan_1.stl"
link5 = "https://cdn.thingiverse.com/assets/b0/e3/13/54/87/ARTICULATED_ice_dragon_fixed_p1.stl"
link6 = "https://cdn.thingiverse.com/assets/4d/6e/1d/fc/35/103_Assembly_T-Rex_v7.stl"
link7 = "https://cdn.thingiverse.com/assets/57/13/25/ec/71/Sponge_holder.stl"
link8 = "https://cdn.thingiverse.com/assets/fa/1b/a2/b7/b1/Full_set_Catapult.stl"
link9 = "https://cdn.thingiverse.com/assets/c8/05/ff/16/6c/Frame.stl"
link10 = "https://cdn.thingiverse.com/assets/f7/e5/56/14/08/12PlugCover.stl"

puts "creating products..."

product1 = Product.create(name: "Can opener", description: "open cans easily", file3d: link1)
product2 = Product.create(name: "Beer Crate", description: "to store your beers", file3d: link2)
product3 = Product.create(name: "Disk Rack Roller", description: "replacement of upper disk", file3d: link3)
product4 = Product.create(name: "Air ventilation valve", description: "replacement of upper disk", file3d: link4)
product5 = Product.create(name: "Ice dragon", description: "to store your beers", file3d: link5)
product6 = Product.create(name: "T-Rex", description: "replacement of upper disk", file3d: link6)
product7 = Product.create(name: "Homer sponge holder", description: "replacement of upper disk", file3d: link7)
product8 = Product.create(name: "Pocket catapult", description: "to store your beers", file3d: link8)
product9 = Product.create(name: "Reel Holder", description: "replacement of upper disk", file3d: link9)
product0 = Product.create(name: "Plug cover", description: "replacement of upper disk", file3d: link10)

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


# require "open-uri"

# url = ""
# products_serialized = URI.open(url).read
# all_products = JSON.parse(products_serialized)

# all_products.each do |product|
 # product.name
#   product.description
  # product.picture
  # product.downloadlink
# end
# puts "#{product["name"]} - #{product["description"]}"

products_categories1 = ProductCategory.create!(category: category1, product: product1)
products_categories2 = ProductCategory.create!(category: category1, product: product2)
products_categories3 = ProductCategory.create!(category: category1, product: product3)
products_categories4 = ProductCategory.create!(category: category2, product: product4)
products_categories5 = ProductCategory.create!(category: category2, product: product5)
products_categories6 = ProductCategory.create!(category: category2, product: product6)
products_categories7 = ProductCategory.create!(category: category3, product: product7)
products_categories8 = ProductCategory.create!(category: category3, product: product8)
products_categories9 = ProductCategory.create!(category: category3, product: product9)
products_categories10 = ProductCategory.create!(category: category3, product: product0)
