class Registry < ApplicationRecord
  belongs_to :group
  belongs_to :charge
  belongs_to :unity
  belongs_to :program_receptor
  belongs_to :person

  def full_name
  	person.full_name
  end

  def id_document
  	person.id_document
  end

  def dnis
  	person.dnis
  end

  def scout_group
  	self.group.description
  end

end
