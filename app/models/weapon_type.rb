class WeaponType < ApplicationRecord
  validates :name, :dist_min, :dist_max, :dmg_min, :dmg_max,
            :clip_min, :clip_max, presence: true
  belongs_to :weapon_category
  @count = all.size

  def self.randomize
    @random_type = find(rand(1..@count))
    type = @random_type.name
    category = @random_type.weapon_category.name
    dist = rand(@random_type.dist_min..@random_type.dist_max)
    dmg = rand(@random_type.dmg_min..@random_type.dmg_max)
    dices = [4, 6, 8, 20] # D4 D6 D8 -D10 -D12 D20
    i = 0
    i += 1 until (dmg / dices[i]) < 3 || (i > 2)
    dmg = "#{(dmg / dices[i])}d#{dices[i]} + #{(dmg % dices[i])} (#{dmg})"
    clip = rand(@random_type.clip_min..@random_type.clip_max)
    clip = "\xE2\x88\x9E" if clip < 0
    [type, category, dist, dmg, clip]
  end
end
