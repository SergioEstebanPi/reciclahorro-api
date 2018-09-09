class CreateSolicitudes < ActiveRecord::Migration[5.1]
  def change
    create_table :solicitudes do |t|
      t.references :user, foreign_key: true
      t.references :oferta, foreign_key: true
      t.string :titulo
      t.text :descripcion
      t.numeric :tipo
      t.string :direccion
      t.numeric :estado

      t.timestamps
    end
  end
end
