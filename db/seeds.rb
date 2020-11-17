# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
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
user4.save!

bike1 = Bike.new(
  title:"Velo route cannondale",
  bike_type: "Velo de route",
  description:"Je loue mon beau vélo, super beau, tout neuf",
  daily_price: 20,
  address_line_1: "10, rue Saint_michel",
  zipcode:"35000",
  city: "Rennes",
  country: "France",
  enable: true,
  user: user1
  )
bike1.image.attach(io: File.open(Rails.root.join('db/fixtures/bikes/bike_1.jpg')), filename: 'bike_1.jpg')
bike1.save!

bike2 = Bike.new(
  title:"Velo de route cannondale",
  bike_type: "Velo de course",
  description:"A louer un velo de course qui roule super vite",
  daily_price: 20,
  address_line_1: "10, rue Saint_michel",
  zipcode:"35000",
  city: "Rennes",
  country: "France",
  enable: true,
  user: user1
  )
bike2.image.attach(io: File.open(Rails.root.join('db/fixtures/bikes/bike_2.jpg')), filename: 'bike_2.jpg')
bike2.save!

bike3 = Bike.new(
  title:"Velo neuf  cannondale",
  bike_type: "Velo cannondale",
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
  title:"Super velo de route cannondale",
  bike_type: "Velo course",
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

booking1 = Booking.new(
  start_date: "2020-10-01",
  end_date: "2020-10-03",
  total_price: 60,
  bike: bike1,
  user: user2,
  status: "pending"
  )
booking1.save!

booking2 = Booking.new(
  start_date: "2020-10-10",
  end_date: "2020-10-12",
  total_price: 60,
  bike: bike3,
  user: user3,
  status: "accepted"
  )
booking2.save!




