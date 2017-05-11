class SprPerson < ApplicationRecord
  belongs_to :ocupation
  belongs_to :nationality
  belongs_to :academic_level
  belongs_to :relationship
  belongs_to :Document_type
  has_one :Person, dependent: :destroy

  accepts_nested_attributes_for :Person


  def id_document
  	document  	
  end
end
