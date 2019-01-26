class CreateErroLoginPasswords < ActiveRecord::Migration[5.2]
  def change
    create_table :erro_login do |t|
      t.integer id:false, null: false
      t.string :pagina, null: false
      t.text :erro, null: false
      t.timestamps null: false
    end
  end
end
