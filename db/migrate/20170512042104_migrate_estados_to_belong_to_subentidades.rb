class MigrateEstadosToBelongToSubentidades < ActiveRecord::Migration[5.0]
  def change
    Estado.destroy_all
    remove_column :estados, :situacion_id
    add_column :estados, :subentidad_id, :integer, null: false
    add_index :estados, :subentidad_id
    add_foreign_key :estados, :subentidades
  end
end
