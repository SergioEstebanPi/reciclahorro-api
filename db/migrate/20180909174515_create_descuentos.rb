class CreateDescuentos < ActiveRecord::Migration[5.1]
  def change
    create_table :descuentos do |t|
      t.string :titulo
      t.text :descripcion
      t.numeric :porcentaje
      t.references :almacen, foreign_key: true

      t.timestamps
    end
  end
end
