class SprPerson < ApplicationRecord
  belongs_to :ocupation
  belongs_to :nationality
  belongs_to :academic_level
  belongs_to :relationship
  belongs_to :document_type

  has_one :person, dependent: :destroy

  accepts_nested_attributes_for :person

  def full_name
  	first_name+" "+second_name+" "+first_last_name+" "+second_last_name  	
  end

  def id_document
  	document
  end
end
