class CreatePnlGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :pnl_groups do |t|
      t.string :code, null: false
      t.string :name, null: false
      t.integer :parent_id, null: false, default: 0
      t.timestamps
    end
  end
end
