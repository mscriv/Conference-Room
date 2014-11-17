class CreateCampuses < ActiveRecord::Migration
  def change
    create_table :campuses do |t|
      t.string :index
      t.string :new
      t.string :show

      t.timestamps
    end
  end
end
