class ChangeInputModel < ActiveRecord::Migration
  def up
    remove_column :inputs, :sensor_name
    remove_column :inputs, :farm_id
    
    add_column :inputs, :sensor_id, :integer
    
  end

  def down
  end
end
