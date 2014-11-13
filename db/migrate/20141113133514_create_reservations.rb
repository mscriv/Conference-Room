class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :date
      t.string :starts_at
      t.string :ends_at
      t.references :room, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
