class CreateQuests < ActiveRecord::Migration[5.1]
  def change
    create_table :quests do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
  create_table :players_quests, id: false do |t|
    t.belongs_to :player, index: true
    t.belongs_to :quest, index: true
  end
end
