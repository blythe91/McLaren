class Group < ApplicationRecord
  belongs_to :district
  belongs_to :parish
end
