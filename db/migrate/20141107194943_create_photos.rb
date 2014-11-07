class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :image
      t.references :room, index: true

      t.timestamps
    end
  end
end
