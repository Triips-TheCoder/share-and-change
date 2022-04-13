# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

alimentation = Need.where(name: 'Alimentation').first_or_create
emploi = Need.where(name: 'Emploi').first_or_create
formation = Need.where(name: '')

secours_pop = Charity.where(name: 'Secours Populaire').first_or_create

capsule = Capsule.where(charity: secours_pop, need: alimentation).first_or_create
capsule.first_name = 'Alaa'
capsule.video = '699029249'
capsule.quote = "Il faut aller travailler avec l'associtaion Singa pour faire grandir son projet"
capsule.save
