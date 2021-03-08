class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.string :schedule_id
      t.string :schedule_title
      t.datetime :start
      t.datetime :end
      t.string :facility_type
      t.string :room_name

      t.timestamps
    end
  end
end
