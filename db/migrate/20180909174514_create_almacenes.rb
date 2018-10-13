class CreateAlmacenes < ActiveRecord::Migration[5.1]
  def change
    create_table :almacenes do |t|
      t.string :nombre
      t.string :nit
      t.text :imagen
      t.references :user, foreign_key: true
      t.numeric :tipo
      t.string :direccion

      t.timestamps
    end
  end
end
