# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

3.times do
    cities=City.create!(name: Faker::Nation.capital_city)
end

5.times do
    doctor = Doctor.create!(first_name: Faker::Beer.name, last_name: Faker::Beer.hop, zip_code: Faker::Code.sin, city_id: Random.rand(1..5))
end

5.times do
    patient = Patient.create!(first_name: Faker::GreekPhilosophers.name, last_name: Faker::Dessert.variety, city_id: Random.rand(1..5))
end

5.times do
    speciality = Speciality.create!(name: Faker::Games::Pokemon.name)
end

2.times do
    Doctor.find(Random.rand(1..5)).specialities << Speciality.find(Random.rand(1..3))
end
#pas reussi de lier speciality - il faut creer un autre table? ActiveRecord::StatementInvalid: Could not find table 'doctors_specialities'

