class Person < ApplicationRecord
  belongs_to :spr_person
  belongs_to :parish

  has_many :adults, dependent: :destroy

  def full_name
    self.spr_person.full_name
  end

  def to_s
    self.spr_person.full_name
  end

  def id_document
    self.spr_person.id_document
  end
end
