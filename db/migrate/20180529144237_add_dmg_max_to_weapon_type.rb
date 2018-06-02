class AddDmgMaxToWeaponType < ActiveRecord::Migration[5.1]
  def change
    add_column :weapon_types, :dmg_max, :integer
    add_column :weapon_types, :clip_max, :integer
  end
end
