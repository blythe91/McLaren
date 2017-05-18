class SprPerson < ApplicationRecord
  belongs_to :ocupation
  belongs_to :nationality
  belongs_to :academic_level
  belongs_to :relationship
  belongs_to :document_type

  has_many :people, dependent: :destroy

  accepts_nested_attributes_for :people

  def full_name
    first_name+" "+second_name+" "+first_last_name+" "+second_last_name
  end

  def to_s
    first_name+" "+second_name+" "+first_last_name+" "+second_last_name
  end

  def id_document
  	self.document_type.tok+""+document
  end
end
