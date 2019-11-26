class AddPictureToScooters < ActiveRecord::Migration[5.2]
  def change
    add_column :scooters, :picture, :string
  end
end
