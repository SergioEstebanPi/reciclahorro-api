class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :documento
      t.text :foto
      t.numeric :rol
      t.string :direccion
      t.date :fecha_nacimiento

      t.timestamps
    end
  end
end
