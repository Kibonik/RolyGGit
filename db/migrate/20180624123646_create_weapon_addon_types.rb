class CreateWeaponAddonTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :weapon_addon_types do |t|
      t.string :name
    end
  end
end
