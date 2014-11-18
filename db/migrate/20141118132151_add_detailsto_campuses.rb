class AddDetailstoCampuses < ActiveRecord::Migration
  def change
    add_column :campuses, :name, :string
    add_column :campuses, :city, :string
    add_column :campuses, :state, :string
    add_column :campuses, :phone, :string
    add_column :campuses, :address, :string
    add_column :campuses, :zip_code, :integer

  end
end
