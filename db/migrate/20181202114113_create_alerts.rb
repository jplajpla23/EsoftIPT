class CreateAlerts < ActiveRecord::Migration[5.2]
  def change
    create_table :alerts do |t|
      t.primary_key :sensor_idsensors
      t.string :message
      t.float :min
      t.float :max
      t.timestamp :created_at
      t.timestamp :updated_at

      t.timestamps
    end
  end
end
