class CreateFarms < ActiveRecord::Migration
  def change
    create_table :farms do |t|
      t.string :name
      t.string :tele_id

      t.timestamps
    end
  end
end
