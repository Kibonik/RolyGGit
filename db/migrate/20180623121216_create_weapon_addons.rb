class CreateWeaponAddons < ActiveRecord::Migration[5.1]
  def change
    create_table :weapon_addons do |t|
      t.string :type
      t.string :name
      t.text :text
      t.integer :dmg
      t.integer :dist
      t.integer :clip
    end
  end
end
