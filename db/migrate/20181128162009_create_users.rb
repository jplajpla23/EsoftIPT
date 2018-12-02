class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
   	  t.integer :role
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :remember_token

      t.timestamps
    end
  end
end