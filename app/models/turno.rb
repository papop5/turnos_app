class Turno < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :agencia
  has_one :evaluacion #un turno tiene una sola evaluacion es de decir: es una relacion uno a uno
end
