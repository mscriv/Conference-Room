class AddCampusReftoUsers < ActiveRecord::Migration
  def change
    add_reference :users, :campus, index: true

  end
end
