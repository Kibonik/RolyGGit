class RemoveWeaponAddonRefToWeaponAddonTypes < ActiveRecord::Migration[5.1]
  def change
    remove_reference :weapon_addon_types, :weapon_addon, foreign_key: true
  end
end
