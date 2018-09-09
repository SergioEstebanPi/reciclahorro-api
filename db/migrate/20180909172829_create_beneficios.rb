class CreateBeneficios < ActiveRecord::Migration[5.1]
  def change
    create_table :beneficios do |t|
      t.references :user, foreign_key: true
      t.references :entrega, foreign_key: true
      t.numeric :estado
      t.text :codigobarras

      t.timestamps
    end
  end
end
