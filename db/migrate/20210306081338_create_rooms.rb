class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :room_id
      t.string :room_name
      t.string :room_fac_type

      t.timestamps
    end
  end
end
