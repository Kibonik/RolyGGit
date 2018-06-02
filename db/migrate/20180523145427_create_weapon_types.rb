class CreateWeaponTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :weapon_types do |t|
      t.references :weapon_category, index: true
      t.string :name
      t.integer :dist_min, :dist_max, :dmg_min, :dmg_min, :clip_min, :clip_min
      t.timestamps
    end
  end
end
