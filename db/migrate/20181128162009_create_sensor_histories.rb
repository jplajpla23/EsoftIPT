class CreateSensorHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :sensor_histories do |t|
      t.integer :value
      t.timestamp :time
      t.references :sensors, foreign_key: true

      t.timestamps
    end
  end
end
