class CreateErroLoginPasswords < ActiveRecord::Migration[5.2]
  def change
    create_table :erro_login do |t|
      t.integer id:false
      t.string :pagina, null: false
      t.text :erro, null: false
      t.timestamps
    end
  end
end
