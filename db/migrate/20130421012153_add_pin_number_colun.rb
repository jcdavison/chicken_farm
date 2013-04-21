class AddPinNumberColun < ActiveRecord::Migration
  def up
    add_column :sensors, :pin_number, :integer
  end

  def down
  end
end
