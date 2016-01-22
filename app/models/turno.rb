class Turno < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :agencia
  has_one :evaluacion #un turno tiene una sola evaluacion es de decir: es una relacion uno a uno

  validates :numero, presence: true
  validates :nombre, presence: true
  validates :asunto, presence: true
  validates :descripcion, presence: true

def self.to_csv(options = {})
			CSV.generate(options) do |csv|
				csv << column_names
				all.each do |turno|
					csv << turno.attributes.values_at(*column_names)
				end	
			end
		end


end
