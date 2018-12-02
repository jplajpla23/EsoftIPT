class CreateAlerts < ActiveRecord::Migration[5.2]
  def change
    create_table :alerts do |t|
      t.string :message
      t.float :min
      t.float :max
      t.references :sensors, foreign_key: true
      t.timestamps
    end
  end
end