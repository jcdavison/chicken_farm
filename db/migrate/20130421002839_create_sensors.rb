class CreateSensors < ActiveRecord::Migration
  def change
    create_table :sensors do |t|
      t.string :sensor_type
      t.integer :farm_id

      t.timestamps
    end
  end
end
