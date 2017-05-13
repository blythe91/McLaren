class Person < ApplicationRecord
  belongs_to :spr_person, optional: true
  belongs_to :parish
end
