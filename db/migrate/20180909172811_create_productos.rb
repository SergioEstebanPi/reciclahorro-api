class CreateProductos < ActiveRecord::Migration[5.1]
  def change
    create_table :productos do |t|
      t.string :nombre
      t.text :descripcion
      t.attachment :imagen

      t.timestamps
    end
  end
end
