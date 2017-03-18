class CreateResultados < ActiveRecord::Migration[5.0]
  def change
    create_table :resultados do |t|
      t.string :descripcion, null: false
      t.references :estado, foreign_key: true

      t.timestamps
    end
  end
end
