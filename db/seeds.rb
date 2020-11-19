# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "starting seed"
Booking.destroy_all
Bike.destroy_all
User.destroy_all

user1 = User.new(
email:    "michel.blanc@example.com",
password: "123456",
first_name: "Michel",
last_name: "Blanc",
address_line_1: "10, rue Saint_michel",
zipcode: "35000",
city: "Rennes",
country: "France"
)
user1.avatar.attach(io: File.open(Rails.root.join('db/fixtures/users/user_1.jpg')), filename: 'user_1.jpg')
user1.save!

user2 = User.new(
email:    "michel.sardou@example.com",
password: "123456",
first_name: "Michel",
last_name: "Sardou",
address_line_1: "10, rue de la soif",
zipcode: "35000",
city: "Rennes",
country: "France"
)
user2.avatar.attach(io: File.open(Rails.root.join('db/fixtures/users/user_2.jpg')), filename: 'user_2.jpg')
user2.save!

user3 = User.new(
email:    "jean-michel.jarre@example.com",
password: "123456",
first_name: "Jean-Michel",
last_name: "Jarre",
address_line_1: "10, chemin des vielles charrues",
zipcode: "29270",
city: "Carhaix",
country: "France"
)
user3.avatar.attach(io: File.open(Rails.root.join('db/fixtures/users/user_3.jpg')), filename: 'user_3.jpg')
user3.save!

user4 = User.new(
email:    "michel.polnareff@example.com",
password: "123456",
first_name: "Michel",
last_name: "Polnaref",
address_line_1: "10, chemin des vielles charrues",
zipcode: "22110",
city: "Rostrenen",
country: "France"
)
user4.avatar.attach(io: File.open(Rails.root.join('db/fixtures/users/user_4.jpg')), filename: 'user_4.jpg')
user4.save!

bike1 = Bike.new(
title:"BMC Teammachine",
bike_type: "Course",
description:"Je loue mon BMC, très entretenu et prêt à rouler",
daily_price: 20,
address_line_1: "10, rue Saint_michel",
zipcode:"35000",
city: "Rennes",
country: "France",
enable: true,
user: user2
)
bike1.image.attach(io: File.open(Rails.root.join('db/fixtures/bikes/bike_1.jpg')), filename: 'bike_1.jpg')
bike1.save!

bike2 = Bike.new(
title:"SANTA CRUZ Stigmata",
bike_type: "Course",
description:"A louer un velo de course qui roule super vite",
daily_price: 20,
address_line_1: "10, rue Saint_michel",
zipcode:"35000",
city: "Rennes",
country: "France",
enable: true,
user: user2
)
bike2.image.attach(io: File.open(Rails.root.join('db/fixtures/bikes/bike_2.jpg')), filename: 'bike_2.jpg')
bike2.save!

bike3 = Bike.new(
title:"CERVELO R5 Disc ",
bike_type: "Course",
description:"Je loue mon beau vélo, hyper pratique pour aller chercher le pain",
daily_price: 20,
address_line_1: "10, chemin des vielles charrues",
zipcode:"22110",
city: "Rostrenen",
country: "France",
enable: true,
user: user3
)
bike3.image.attach(io: File.open(Rails.root.join('db/fixtures/bikes/bike_3.jpg')), filename: 'bike_3.jpg')
bike3.save!

bike4 = Bike.new(
title:"Cannondale Super Six",
bike_type: "Course",
description:"Je loue mon beau vélo, au top pour aller en festoche",
daily_price: 20,
address_line_1: "10, chemin des vielles charrues",
zipcode:"22110",
city: "Rostrenen",
country: "France",
enable: true,
user: user3
)
bike4.image.attach(io: File.open(Rails.root.join('db/fixtures/bikes/bike_4.jpg')), filename: 'bike_4.jpg')
bike4.save!

bike5 = Bike.new(
title:"Btwin Elops 500",
bike_type: "Ville",
description:"Vélo de ville très confortable",
daily_price: 20,
address_line_1: "10, chemin des vielles charrues",
zipcode:"22110",
city: "Rostrenen",
country: "France",
enable: true,
user: user3
)
bike5.image.attach(io: File.open(Rails.root.join('db/fixtures/bikes/bike_5.jpg')), filename: 'bike_5.jpg')
bike5.save!

bike6 = Bike.new(
title:"Peugeot ancien",
bike_type: "Ville",
description:"Utilisation urbaine, super stylé",
daily_price: 20,
address_line_1: "10, chemin des vielles charrues",
zipcode:"22110",
city: "Rostrenen",
country: "France",
enable: true,
user: user2
)
bike6.image.attach(io: File.open(Rails.root.join('db/fixtures/bikes/bike_6.jpg')), filename: 'bike_6.jpg')
bike6.save!

bike7 = Bike.new(
title:"Vélo vintage",
bike_type: "Ville",
description:"Vélo rétro vintage, idéal pour la balade",
daily_price: 20,
address_line_1: "10, chemin des vielles charrues",
zipcode:"22110",
city: "Rostrenen",
country: "France",
enable: true,
user: user4
)
bike7.image.attach(io: File.open(Rails.root.join('db/fixtures/bikes/bike_7.jpg')), filename: 'bike_7.jpg')
bike7.save!

bike8 = Bike.new(
title:"VTT homme",
bike_type: "VTT",
description:"Loue VTT homme, avec casque, antivol et bombe anti-crevaison",
daily_price: 20,
address_line_1: "10, chemin des vielles charrues",
zipcode:"22110",
city: "Rostrenen",
country: "France",
enable: true,
user: user4
)
bike8.image.attach(io: File.open(Rails.root.join('db/fixtures/bikes/bike_8.jpg')), filename: 'bike_8.jpg')
bike8.save!

bike9 = Bike.new(
title:"VTC mixte",
bike_type: "VTT",
description:"Loue VTC homme, en bon état, avec panier",
daily_price: 20,
address_line_1: "10, chemin des vielles charrues",
zipcode:"22110",
city: "Rostrenen",
country: "France",
enable: true,
user: user3
)
bike9.image.attach(io: File.open(Rails.root.join('db/fixtures/bikes/bike_9.jpg')), filename: 'bike_9.jpg')
bike9.save!

bike10 = Bike.new(
title:"Vélo de ville femme",
bike_type: "Ville",
description:"Vélo gris, en bon état",
daily_price: 20,
address_line_1: "10, chemin des vielles charrues",
zipcode:"22110",
city: "Rostrenen",
country: "France",
enable: true,
user: user4
)
bike10.image.attach(io: File.open(Rails.root.join('db/fixtures/bikes/bike_10.jpg')), filename: 'bike_10.jpg')
bike10.save!

bike11 = Bike.new(
title:"VTT haut de gamme",
bike_type: "VTT",
description:"Hardtail Bike avec Suspension Avant",
daily_price: 20,
address_line_1: "10, chemin des vielles charrues",
zipcode:"22110",
city: "Rostrenen",
country: "France",
enable: true,
user: user2
)
bike11.image.attach(io: File.open(Rails.root.join('db/fixtures/bikes/bike_11.jpg')), filename: 'bike_11.jpg')
bike11.save!

booking1 = Booking.new(
start_date: "2020-10-01",
end_date: "2020-10-03",
total_price: 60,
bike: bike1,
user: user1,
status: "pending"
)
booking1.save!

booking2 = Booking.new(
start_date: "2020-10-10",
end_date: "2020-10-12",
total_price: 60,
bike: bike7,
user: user1,
status: "accepted"
)
booking2.save!




