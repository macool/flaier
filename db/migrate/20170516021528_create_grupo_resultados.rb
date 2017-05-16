class CreateGrupoResultados < ActiveRecord::Migration[5.0]
  def change
    create_table :grupo_resultados do |t|
      t.text :resultados_ids, array: true, default: []

      t.timestamps
    end
  end
end
