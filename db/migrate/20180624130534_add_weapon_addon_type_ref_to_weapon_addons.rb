class AddWeaponAddonTypeRefToWeaponAddons < ActiveRecord::Migration[5.1]
  def change
    add_reference :weapon_addons, :weapon_addon_type, foreign_key: true
  end
end
