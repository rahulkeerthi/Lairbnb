class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.references :user, null: false, foreign_key: true
      t.references :lair, null: false, foreign_key: true
      t.integer :total_cost

      t.timestamps
    end
  end
end
