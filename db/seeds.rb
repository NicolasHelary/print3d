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
user7 = User.create(first_name: "Steve", email: "steve@gmail.com", address: "29 rue de Peypagan, Aubagne", last_name: "Seven", printer: true, password: "azerty")
user8 = User.create(first_name: "Elon", email: "elonp@gmail.com", address: "158 Bd Paul Cézanne, Gardanne", last_name: "Eight", printer: false, password: "azerty")
user9 = User.create(first_name: "Mike", email: "mike@gmail.com", address: "13 Cr Mirabeau, 13100 Aix-en-Provence", last_name: "Nine", printer: true, password: "azerty")
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
product2 = Product.create(name: "Beer Crate Battery Holder", description: "to store your batteries", file3d: link2)
product3 = Product.create(name: "Disk Rack Roller", description: "replacement of upper disk", file3d: link3)
product4 = Product.create(name: "Air ventilation valve", description: "replace your valve !", file3d: link4)
product5 = Product.create(name: "Ice dragon", description: "Heard about Dragon's Ice", file3d: link5)
product6 = Product.create(name: "T-Rex Skeleton", description: "little T-rex easy to print", file3d: link6)
product7 = Product.create(name: "Homer sponge holder", description: "memest sponge holder ever", file3d: link7)
product8 = Product.create(name: "Pocket catapult", description: "to lauch siege from your pocket", file3d: link8)
product9 = Product.create(name: "Fishing Rod", description: "Fully Printable Fishing Rod", file3d: link9)
product0 = Product.create(name: "Protect earplug", description: "Stop unraveling the wires", file3d: link10)

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
offer1 = Offer.create(price: 15.00, status: 1, client_score: 5, printer_score: 5, demand_id: demand1.id, printer_id: user7.id)
offer2 = Offer.create(price: 15.00, status: 1, client_score: 5, printer_score: 5, demand_id: demand1.id, printer_id: user7.id)
offer3 = Offer.create(price: 15.00, status: 1, client_score: 5, printer_score: 5, demand_id: demand1.id, printer_id: user3.id)
offer4 = Offer.create(price: 15.00, status: 1, client_score: 5, printer_score: 5, demand_id: demand1.id, printer_id: user3.id)
offer5 = Offer.create(price: 15.00, status: 1, client_score: 5, printer_score: 5, demand_id: demand1.id, printer_id: user7.id)
puts "Offers Created !"

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

# file (uri-img):
file1 = URI.open('https://res.cloudinary.com/ddgdamfek/image/upload/v1655826341/print3d/Can_opener_exf0kd.jpg')
file2 = URI.open('https://res.cloudinary.com/ddgdamfek/image/upload/v1655826341/print3d/Beer_Crate_Battery_Holder_l5whll.png')
file3 = URI.open('https://res.cloudinary.com/ddgdamfek/image/upload/v1655826341/print3d/Disk_Rack_Roller_fzcrow.jpg')
file4 = URI.open('https://res.cloudinary.com/ddgdamfek/image/upload/v1655826341/print3d/Air_ventilation_valve_xvrkbb.jpg')
file5 = URI.open('https://res.cloudinary.com/ddgdamfek/image/upload/v1655826341/print3d/Ice_Dragon_decukc.jpg')
file6 = URI.open('https://res.cloudinary.com/ddgdamfek/image/upload/v1655826341/print3d/T-Rex_Skeleton_kjo5cm.jpg')
file7 = URI.open('https://res.cloudinary.com/ddgdamfek/image/upload/v1655826341/print3d/Homer_sponge_holder_vxj8t1.jpg')
file8 = URI.open('https://res.cloudinary.com/ddgdamfek/image/upload/v1655826341/print3d/Pocket_catapult_azgfa5.jpg')
file9 = URI.open('https://res.cloudinary.com/ddgdamfek/image/upload/v1655826341/print3d/Fishing_Rod_pteoxv.jpg')
file0 = URI.open('https://res.cloudinary.com/ddgdamfek/image/upload/v1655826341/print3d/Protect_earplug_akfhzj.jpg')

# attached photo
product1.photo.attach(io: file1, filename: 'Pocket_catapult_azgfa5', content_type: 'image/jpg')
product2.photo.attach(io: file2, filename: 'Beer_Crate_Battery_Holder_l5whll', content_type: 'image/png')
product3.photo.attach(io: file3, filename: 'Disk_Rack_Roller_fzcrow', content_type: 'image/jpg')
product4.photo.attach(io: file4, filename: 'Air_ventilation_valve_xvrkbb', content_type: 'image/jpg')
product5.photo.attach(io: file5, filename: 'Ice_Dragon_decukc', content_type: 'image/jpg')
product6.photo.attach(io: file6, filename: 'T-Rex_Skeleton_kjo5cm', content_type: 'image/jpg')
product7.photo.attach(io: file7, filename: 'Homer_sponge_holder_vxj8t1', content_type: 'image/jpg')
product8.photo.attach(io: file8, filename: 'Pocket_catapult_azgfa5', content_type: 'image/png')
product9.photo.attach(io: file9, filename: 'Fishing_Rod_pteoxv', content_type: 'image/jpg')
product0.photo.attach(io: file0, filename: 'Protect_earplug_akfhzj', content_type: 'image/jpg')

user_pic1 = URI.open('https://res.cloudinary.com/ddgdamfek/image/upload/v1655891928/print3d/nicolas_l8hk0y.jpg')
user_pic2 = URI.open('https://res.cloudinary.com/ddgdamfek/image/upload/v1655889461/print3d/griffin_lwgesx.jpg')
user_pic3 = URI.open('https://res.cloudinary.com/ddgdamfek/image/upload/v1655889461/print3d/theo_gfip2f.jpg')
user_pic4 = URI.open('https://res.cloudinary.com/ddgdamfek/image/upload/v1655889461/print3d/sophie_zl8jna.jpg')
user_pic5 = URI.open('https://res.cloudinary.com/ddgdamfek/image/upload/v1655889461/print3d/Serkan_yng975.jpg')
user_pic6 = URI.open('https://res.cloudinary.com/ddgdamfek/image/upload/v1655889460/print3d/pedro_a8o5qa.webp')
user_pic7 = URI.open('https://res.cloudinary.com/ddgdamfek/image/upload/v1655889460/print3d/oph%C3%A9lie_a8lfhm.jpg')
user_pic8 = URI.open('https://res.cloudinary.com/ddgdamfek/image/upload/v1655889460/print3d/jeanne_acpov1.webp')
user_pic9 = URI.open('https://res.cloudinary.com/ddgdamfek/image/upload/v1655889460/print3d/nathan_zr1gfd.webp')
user_pic10 = URI.open('https://res.cloudinary.com/ddgdamfek/image/upload/v1655889460/print3d/peter_oj25uy.jpg')
user_pic11 = URI.open('https://res.cloudinary.com/ddgdamfek/image/upload/v1655889460/print3d/marianne_sndmfa.jpg')
user_pic12 = URI.open('https://res.cloudinary.com/ddgdamfek/image/upload/v1655889460/print3d/mathieu_lv1oph.webp')
user_pic13 = URI.open('https://res.cloudinary.com/ddgdamfek/image/upload/v1655889460/print3d/marcela_nqx8ih.webp')
user_pic14 = URI.open('https://res.cloudinary.com/ddgdamfek/image/upload/v1655889460/print3d/henri_hprlqb.jpg')
user_pic15 = URI.open('https://res.cloudinary.com/ddgdamfek/image/upload/v1655889460/print3d/kevin_uu5tgw.webp')
user_pic16 = URI.open('https://res.cloudinary.com/ddgdamfek/image/upload/v1655889460/print3d/jean-marc_wo4rfq.webp')
user_pic17 = URI.open('https://res.cloudinary.com/ddgdamfek/image/upload/v1655889460/print3d/jean_dvxyjp.webp')
user_pic18 = URI.open('https://res.cloudinary.com/ddgdamfek/image/upload/v1655889460/print3d/christiane_n8qor6.jpg')
user_pic19 = URI.open('https://res.cloudinary.com/ddgdamfek/image/upload/v1655889460/print3d/claire_kfynbs.jpg')
user_pic20 = URI.open('https://res.cloudinary.com/ddgdamfek/image/upload/v1655889460/print3d/axelle_fppjgp.jpg')
user_pic21 = URI.open('https://res.cloudinary.com/ddgdamfek/image/upload/v1655889459/print3d/anne_kwdn0b.webp')

# Attached ProfilePic
user1.pp.attach(io: user_pic1, filename: 'nicolas_l8hk0y', content_type: 'image/jpg')
user2.pp.attach(io: user_pic2, filename: 'griffin_lwgesx', content_type: 'image/jpg')
user3.pp.attach(io: user_pic3, filename: 'theo_gfip2f', content_type: 'image/jpg')
user4.pp.attach(io: user_pic4, filename: 'sophie_zl8jna', content_type: 'image/jpg')
user5.pp.attach(io: user_pic5, filename: 'Serkan_yng975', content_type: 'image/jpg')
user6.pp.attach(io: user_pic6, filename: 'pedro_a8o5qa', content_type: 'image/webp')
user7.pp.attach(io: user_pic7, filename: 'ophélie_a8lfhm', content_type: 'image/jpg')
user8.pp.attach(io: user_pic8, filename: 'jeanne_acpov1', content_type: 'image/webp')
user9.pp.attach(io: user_pic9, filename: 'nathan_zr1gfd', content_type: 'image/webp')
user10.pp.attach(io: user_pic10, filename: 'peter_oj25uy', content_type: 'image/jpg')
user11.pp.attach(io: user_pic11, filename: 'marianne_sndmfa', content_type: 'image/jpg')
user12.pp.attach(io: user_pic12, filename: 'mathieu_lv1oph', content_type: 'image/webp')
user13.pp.attach(io: user_pic13, filename: 'marcela_nqx8ihb', content_type: 'image/webp')
user14.pp.attach(io: user_pic14, filename: 'henri_hprlqb', content_type: 'image/jpg')
user15.pp.attach(io: user_pic15, filename: 'kevin_uu5tgw', content_type: 'image/webp')
user16.pp.attach(io: user_pic16, filename: 'jean-marc_wo4rfq', content_type: 'image/webp')
user17.pp.attach(io: user_pic17, filename: 'jean_dvxyjp', content_type: 'image/webp')
user18.pp.attach(io: user_pic18, filename: 'christiane_n8qor6', content_type: 'image/jpg')
user19.pp.attach(io: user_pic19, filename: 'claire_kfynbs', content_type: 'image/jpg')
user20.pp.attach(io: user_pic20, filename: 'axelle_fppjgp', content_type: 'image/jpg')
user21.pp.attach(io: user_pic21, filename: 'anne_kwdn0b', content_type: 'image/webp')

puts "THAT'S ALL FOLKS !!!"
