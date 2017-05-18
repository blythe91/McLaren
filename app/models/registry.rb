class Registry < ApplicationRecord
  belongs_to :group
  belongs_to :charge
  belongs_to :unity
  belongs_to :program_receptor
  belongs_to :person

  def full_name_recep
  	program_receptor
  end

  def id_document
  	self.person.id_document
  end

  def dnis
  	self.person.dnis
  end

  def scout_group
  	self.group.description
  end

end
