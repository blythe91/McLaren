class Person < ApplicationRecord
  belongs_to :spr_person
  belongs_to :parish

  has_many :registries, dependent: :destroy


  def full_name
  	spr_person.full_name
  end

  def id_document
  	spr_person.id_document
  end
end
