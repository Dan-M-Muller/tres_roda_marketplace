# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Destruiu carro"
Car.destroy_all
puts "Destruiu tudo"
puts "Destruindo user"
User.destroy_all
puts "Destruiu tudo"

User.create!(email: '_user_@user.com', password: '123456', first_name: 'Julinho', last_name: 'Balinha')
User.create!(email: 'user_@user.com', password: '123456', first_name: 'Julio', last_name: 'Balas')
User.create!(email: '_user@user.com', password: '123456', first_name: 'Juliao', last_name: 'Balao')
User.create!(email: 'user!@user.com', password: '123456', first_name: 'Juliaozao', last_name: 'Balaozao')
User.create!(email: '!user!@user.com', password: '123456', first_name: 'Julia', last_name: 'Balah')
User.create!(email: "jujubargao@emailreal.confia", password: '123456', first_name: "Juvenal", last_name: "Borga")
User.create!(email: "zein@emailreal.confia", password: '123456', first_name: "Jose", last_name: "Adarmiro")
User.create!(email: "luruta@emailreal.confia", password: '123456', first_name: "Luciana", last_name: "Rutamorao")
User.create!(email: "a.remora@emailreal.confia", password: '123456', first_name: "Andrea", last_name: "Moraci Redoma")
User.create!(email: "albertin_tilim@emailreal.confia", password: '123456', first_name: "Hodalberto", last_name: "Tilimpiado")

puts "Criou todos usuarios"

20.times do
  puts "Criando carros"
  Car.create!(brand: 'ferrari', model: 'spider', km: 100, year: rand(1990..2010), user_id: rand(63..72))
  puts "Criou carros"
end

puts "Created #{User.count} users and #{Car.count} cars."
