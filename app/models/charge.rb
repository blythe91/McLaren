class Charge < ApplicationRecord
  belongs_to :structure_level
  	def to_s
		description
	end
end
