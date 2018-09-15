class CreateOfertas < ActiveRecord::Migration[5.1]
  def change
    create_table :ofertas do |t|
      t.references :almacen, foreign_key: true
      t.references :descuento, foreign_key: true
      t.references :residuo, foreign_key: true
      t.references :producto, foreign_key: true
      t.string :titulo
      t.text :descripcion
      t.date :fecha_inicio
      t.date :fecha_fin
      t.numeric :estado

      t.timestamps
    end
  end
end
