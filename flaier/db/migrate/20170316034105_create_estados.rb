class CreateEstados < ActiveRecord::Migration[5.0]
  def change
    create_table :estados do |t|
      t.references :situacion, foreign_key: true, index: true, null: false
      t.string :descripcion, null: false

      t.timestamps
    end
  end
end
