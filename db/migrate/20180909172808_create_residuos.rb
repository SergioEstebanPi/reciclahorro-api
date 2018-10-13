class CreateResiduos < ActiveRecord::Migration[5.1]
  def change
    create_table :residuos do |t|
      t.string :nombre
      t.text :descripcion
      t.text :imagen
      t.text :tratamiento

      t.timestamps
    end
  end
end
