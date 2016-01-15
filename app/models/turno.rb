class Turno < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :agencia
end
