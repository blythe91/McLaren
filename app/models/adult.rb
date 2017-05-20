class Adult < ApplicationRecord
  belongs_to :person

  has_many :registries, dependent: :destroy

  def full_name
    self.person.full_name
  end

  def to_s
    self.person.full_name
  end

  def id_document
    self.person.id_document
  end
end
