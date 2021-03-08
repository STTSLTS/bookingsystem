class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.string :status
      t.string :title
      t.string :user_id
      t.string :schedule_id
      t.datetime :start
      t.string :room_id

      t.timestamps
    end
    add_index :bookings, :user_id
    add_index :bookings, :schedule_id
    add_index :bookings, :room_id
  end
end
