class CreateInputs < ActiveRecord::Migration
  def change
    create_table :inputs do |t|
      t.string :sensor_name
      t.integer :value
      t.integer :farm_id

      t.timestamps
    end
  end
end
