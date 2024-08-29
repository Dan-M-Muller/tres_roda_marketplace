require 'faker'
require "open-uri"

puts "destruindo deals"
Deal.destroy_all
puts "destruiu deals"

puts "Destruindo carros"
Car.destroy_all
puts "Destruiu carro"


puts'destruindo user'
User.destroy_all

puts'criando user'

User.create!(email: 'julin@realuser.com', password: '123456', first_name: 'Julinho', last_name: 'Balinha')
User.create!(email: 'juju@user.com', password: '123456', first_name: 'Julio', last_name: 'Balas')
User.create!(email: 'jukaliao@user.com', password: '123456', first_name: 'Juliao', last_name: 'Balao')
User.create!(email: 'superjuca@user.com', password: '123456', first_name: 'Juliaozao', last_name: 'Balaozao')
User.create!(email: 'jusi@user.com', password: '123456', first_name: 'Julia', last_name: 'Balah')
User.create!(email: "juvbargao@emailreal.confia", password: '123456', first_name: "Juvenal", last_name: "Borga")
User.create!(email: "zein@emailreal.confia", password: '123456', first_name: "Jose", last_name: "Adarmiro")
User.create!(email: "luruta@emailreal.confia", password: '123456', first_name: "Luciana", last_name: "Rutamorao")
User.create!(email: "a.remora@emailreal.confia", password: '123456', first_name: "Andrea", last_name: "Moraci Redoma")
User.create!(email: "albertin_tilim@emailreal.confia", password: '123456', first_name: "Hodalberto", last_name: "Tilimpiado")

puts "Criou todos usuarios"

car_photos = [File.open("db/seed_cars/ambu.jpg"), File.open("db/seed_cars/belair_2.jpg"), File.open("db/seed_cars/mx5.jpg"),
File.open("db/seed_cars/city-x.jpg"), File.open("db/seed_cars/equator.jpg"), File.open("db/seed_cars/ferrari.jpg"),
File.open("db/seed_cars/fusca.jpg"), File.open("db/seed_cars/hello.jpg"), File.open("db/seed_cars/kart.jpg"),
File.open("db/seed_cars/komb.jpg"), File.open("db/seed_cars/kuro.jpg"), File.open("db/seed_cars/limu.jpg"),
File.open("db/seed_cars/lotus.jpg"), File.open("db/seed_cars/porche.jpg"), File.open("db/seed_cars/taxi.jpg")
]
indx = 0

puts "Criando carros"
15.times do
  car_maker = Faker::Vehicle.make
  car_model = Faker::Vehicle.model
  Car.create!(brand: car_maker, model: car_model, km: rand(0..90000), year: rand(1960..2010),
            user: User.all.sample, photo: car_photos[indx], initial_price: rand(5350..38780))
  indx +=1
  puts "Criou carro #{indx}"
end

puts "Created #{User.count} users and #{Car.count} cars."
