class AddWeaponAddonRefToWeaponAddonTypes < ActiveRecord::Migration[5.1]
  def change
    add_reference :weapon_addon_types, :weapon_addon, foreign_key: true
  end
end
