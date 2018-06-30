class WeaponAddon < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :dmg, :dist, :clip, if: :mod?
  validates_presence_of :text, if: :perk?
  validates_presence_of :dmg, :dist, :clip, :text, if: :second?
  belongs_to :weapon_addon_type



  def mod?
    (weapon_addon_type_id == 1) && dmg.blank? && clip.blank? && dist.blank?
  end

  def perk?
    weapon_addon_type_id == 2
  end

  def second?
    weapon_addon_type_id == 3
  end

end