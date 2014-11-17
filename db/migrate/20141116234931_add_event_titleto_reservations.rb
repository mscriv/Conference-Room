class AddEventTitletoReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :event_title, :string

  end
end
