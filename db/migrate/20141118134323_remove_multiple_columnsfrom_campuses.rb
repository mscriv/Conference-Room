class RemoveMultipleColumnsfromCampuses < ActiveRecord::Migration
  def change
    remove_column :campuses, :index, :string
    remove_column :campuses, :new, :string
    remove_column :campuses, :show, :string
  end
end
