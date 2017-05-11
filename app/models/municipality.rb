class Municipality < ApplicationRecord
  	belongs_to :State
	def to_s
		description
	end
end
