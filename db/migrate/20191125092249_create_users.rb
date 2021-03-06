class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :location
      t.string :description
      t.string :avatar
      t.string :email
      t.string :phone_number

      t.timestamps
    end
  end
end
