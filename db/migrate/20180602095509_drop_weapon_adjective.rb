class DropWeaponAdjective < ActiveRecord::Migration[5.1]
  def change
    drop_table :weapon_adjectives
  end
end
