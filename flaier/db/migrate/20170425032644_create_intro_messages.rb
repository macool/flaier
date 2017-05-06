class CreateIntroMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :intro_messages do |t|
      t.text :content, null: false
    end
  end
end
