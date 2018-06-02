class DropWeaponName < ActiveRecord::Migration[5.1]
  def change
    drop_table :weapon_names
  end
end
