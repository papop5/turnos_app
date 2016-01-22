#require 'csv'
class Agencia < ActiveRecord::Base
	#include Export

	has_many :usuarios  #relacion de uno a muchos
	has_many :turnos

	validates :nombre, presence: true
	validates :direccion, presence: true

		def self.to_csv(options = {})
			CSV.generate(options) do |csv|
				csv << column_names
				all.each do |agencia|
					csv << agencia.attributes.values_at(*column_names)
				end	
			end
		end

end