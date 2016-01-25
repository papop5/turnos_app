# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
    


    Agencia.create(
	nombre: 'Parque Berrio',
	direccion: 'Cra. 49 # 50-21'
	)

	Usuario.create(
	nombre: 'Rafael',
	apellido: 'Perez',
	correo: 'rafper5@gmail.com',
	password: '123456',
	password_confirmation: '123456',
	login: 'admin',
	agencia_id: 1, #Ojo antes de ejecutar el sed se debe crear la agencia por eje parque berrio
	rol: 'Administrador'
	)

	