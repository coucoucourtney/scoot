class CreateScooters < ActiveRecord::Migration[5.2]
  def change
    create_table :scooters do |t|
      t.string :model
      t.string :top_speed
      t.string :price
      t.boolean :availability
      t.string :location
      t.string :battery
      t.string :year
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
