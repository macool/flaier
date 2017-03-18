class CreateSituaciones < ActiveRecord::Migration[5.0]
  def change
    create_table :situaciones do |t|
      t.references :entidad, foreign_key: true, null: false, index: true
      t.string :descripcion, null: false

      t.timestamps
    end
  end
end
