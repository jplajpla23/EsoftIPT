class CreateSensors < ActiveRecord::Migration[5.2]
  def change
    create_table :sensors do |t|
      t.integer :idusers
      t.string :sensor_desc
      t.string :mac
      t.float :max
      t.float :min
      t.timestamps
    end
  end
end