class WeaponName < ApplicationRecord
  validates :name, presence: true
  def self.randomize
    @count = all.size
    find(rand(1..@count)).name.mb_chars.titleize
  end
end
