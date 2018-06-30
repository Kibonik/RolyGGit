class WeaponType < ApplicationRecord
  validates :name, :dist_min, :dist_max, :dmg_min, :dmg_max,
            :clip_min, :clip_max, presence: true
  belongs_to :weapon_category

  def self.randomize
    count = 4
    titles = WeaponName.randomize(count)
    results = []
    @type_array = all.includes(:weapon_category)
    @type_array.sample(count).each_with_index  do |t, index|
      type = {}
      type[:title] = titles[index]
      type[:name] = t.name
      type[:category] = t.weapon_category.name
      type[:dmg] = dicing(t.dmg_min, t.dmg_min)
      type[:dist] = rand(t.dist_min - t.dist_max)
      type[:clip] = t.clip_max > 0 ? rand(t.clip_min - t.clip_max) : "N/A"
      results << type
    end
    logger.debug(results)
    results
  end

  def self.dicing(d_min, d_max)
    dmg = rand(d_min..d_max)
    dices = [4, 6, 8, 20] # D4 D6 D8 -D10 -D12 D20
    i = 0
    i += 1 until (dmg / dices[i]) < 3 || (i > 2)
    "#{(dmg / dices[i])}d#{dices[i]} + #{(dmg % dices[i])} (#{dmg})"
  end
end
