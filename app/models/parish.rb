class Parish < ApplicationRecord
  belongs_to :Municipality
  has_many :person
	def to_s
		description
	end
end
