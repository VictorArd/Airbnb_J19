# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

#Création de 2 Villes
2.times do
  @t = City.create(city_name: Faker::Address.city)
end
p 'Création de 2 Villes'

#Création de 5 chiens et 5 Gardes chien
5.times do 
@d = Dogsitter.create(first_name: Faker::Name.first_name, last_name: Faker::Name.middle_name, city: @t)
@c = Dog.create(name: Faker::Dog.name, city: @t)
end
p 'Création de 5 chiens et 5 Gardes chien'  

#Création de 3 balades
3.times do 
  s = Stroll.create(date: Faker::Date.forward(10), city: @t, dogsitter: @d, dog: @c)
end
p 'Création de 3 balades'  