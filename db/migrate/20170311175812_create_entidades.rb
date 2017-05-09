class CreateEntidades < ActiveRecord::Migration[5.0]
  def change
    create_table :entidades do |t|
      t.string :descripcion, null: false

      t.timestamps
    end
  end
end
