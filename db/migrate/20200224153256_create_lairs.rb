class CreateLairs < ActiveRecord::Migration[6.0]
  def change
    create_table :lairs do |t|
      t.string :title
      t.string :location
      t.string :description
      t.integer :price_per_night
      t.boolean :is_hero_lair
      t.string :map_lat
      t.string :map_long
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
