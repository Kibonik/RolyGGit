class RemoveTypeFromWeaponAddons < ActiveRecord::Migration[5.1]
  def change
    remove_column :weapon_addons, :type, :string
  end
end
