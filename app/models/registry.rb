class Registry < ApplicationRecord
  belongs_to :group
  belongs_to :charge
  belongs_to :unity
  belongs_to :adult
  belongs_to :program_receptor
end
