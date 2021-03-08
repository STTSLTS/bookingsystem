class CreateFacilities < ActiveRecord::Migration[6.1]
  def change
    create_table :facilities do |t|
      t.string :facility_id
      t.string :facility_name
      t.string :facility_type

      t.timestamps
    end
  end
end
