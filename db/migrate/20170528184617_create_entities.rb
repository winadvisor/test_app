class CreateEntities < ActiveRecord::Migration[5.0]
  def change
    create_table :entities do |t|
      t.string :code, null: false
      t.string :name, null: false
      t.timestamps null: false
    end
  end
end
