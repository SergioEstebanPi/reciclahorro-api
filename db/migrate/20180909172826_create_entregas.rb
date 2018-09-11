class CreateEntregas < ActiveRecord::Migration[5.1]
  def change
    create_table :entregas do |t|
      t.references :vecino#, references: :user#, foreign_key: true
      t.references :recolector#, references: :user#, foreign_key: true
      t.references :solicitud#, foreign_key: true
      t.references :oferta, foreign_key: true
      t.numeric :peso
      t.numeric :estadoresiduo

      t.timestamps
    end
  end
end
