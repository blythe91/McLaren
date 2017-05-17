class ProgramReceptor < ApplicationRecord
  belongs_to :person
  belongs_to :spr_person

  has_many :registries, dependent: :destroy


  def full_name
  	person.full_name
  end

  def id_document
  	person.id_document
  end

  def dnis
  	person.dnis
  end


  def representative_full_name
  	spr_person.full_name
  end

  def representative_id_document
  	spr_person.id_document
  end

  

end
