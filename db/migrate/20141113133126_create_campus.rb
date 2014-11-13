class CreateCampus < ActiveRecord::Migration
  def change
    create_table :campus do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :phone_number
      t.integer :zip_code

      t.timestamps
    end
  end
end
