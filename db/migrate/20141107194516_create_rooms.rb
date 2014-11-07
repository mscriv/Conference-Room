class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :location
      t.integer :sq_ft
      t.text :description

      t.timestamps
    end
  end
end
