class MigrateSituacionesToBelongToEstados < ActiveRecord::Migration[5.0]
  def change
    Situacion.destroy_all
    remove_column :situaciones, :entidad_id
    add_column :situaciones, :estado_id, :integer, null: false
    add_index :situaciones, :estado_id
    add_foreign_key :situaciones, :estados
  end
end
