class Group < ApplicationRecord
  belongs_to :district
  belongs_to :parish

  has_many :registries

  def to_s
    description
  end
end
