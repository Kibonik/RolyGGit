class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :name, :race
      t.integer :size, :age

      t.timestamps
    end
  end
end
