class AddTokenToGrupoResultado < ActiveRecord::Migration[5.0]
  def change
    add_column :grupo_resultados, :token, :string, null: false
    add_index :grupo_resultados, :token, unique: true
  end
end
