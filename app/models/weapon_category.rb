class WeaponCategory < ApplicationRecord
  validates :name, presence: true
  has_many :weapon_types

end
