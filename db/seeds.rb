require 'faker'

puts "Destruiu carro"
Car.destroy_all
puts "Destruiu tudo"

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

car_maker = Faker::Vehicle.make
car_model = Faker::Vehicle.model

20.times do
  puts "Criando carros"
  Car.create!(brand: car_maker, model: car_model, km: rand(0..90000), year: rand(1960..2010), user: User.all.sample)
  puts "Criou carros"
end

puts "Created #{User.count} users and #{Car.count} cars."
