# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Usuario.create(
	nombre: 'Rafael',
	apellido: 'Perez',
	correo: 'rafper5@gmail.com',
	password: '123456',
	password_confirmation: '123456',
	login: 'admin'
	)