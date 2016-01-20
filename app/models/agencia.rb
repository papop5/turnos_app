class Agencia < ActiveRecord::Base
	has_many :usuarios  #relacion de uno a muchos
	has_many :turnos
end
