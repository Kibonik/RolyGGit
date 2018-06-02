class CreateWeaponNames < ActiveRecord::Migration[5.1]
  def change
    create_table :weapon_names do |t|
      t.string :name
      t.timestamps
    end
  end
end
