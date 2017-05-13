class RemoveEstadoIdFromResultado < ActiveRecord::Migration[5.0]
  def change
    remove_column :resultados, :estado_id, :integer
  end
end
