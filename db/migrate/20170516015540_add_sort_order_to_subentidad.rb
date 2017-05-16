class AddSortOrderToSubentidad < ActiveRecord::Migration[5.0]
  def change
    add_column :subentidades, :sort_order, :integer, default: 0
    add_index :subentidades, :sort_order
  end
end
