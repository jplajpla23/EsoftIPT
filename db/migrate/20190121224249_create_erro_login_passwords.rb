class CreateErroLoginPasswords < ActiveRecord::Migration[5.2]
  def change
    create_table :erro_login_passwords do |t|
      t.integer id:false
      t.string :pagina
      t.string :mensagem
      t.timestamps
    end
  end
end
