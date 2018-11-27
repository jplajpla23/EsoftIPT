class CreateSensors < ActiveRecord::Migration[5.2]
  def change
    create_table :sensors do |t|
      t.integer :idusers
      t.string :sensor_desc
      t.string :mac
      t.integer :max
      t.integer :min
      t.timestamp :created_at
      t.timestamp :updated_at

      t.timestamps
    end
  end
end
