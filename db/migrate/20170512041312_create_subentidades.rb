class CreateSubentidades < ActiveRecord::Migration[5.0]
  def change
    create_table :subentidades do |t|
      t.string :descripcion, null: false
      t.references :entidad, foreign_key: true, null: false, index: true

      t.timestamps
    end
  end
end
