class CreatePnlItems < ActiveRecord::Migration[5.0]
  def change
    create_table :pnl_items do |t|
      t.string :name, null: false
      t.references :pnl_group, foreign_key: true, null: false
      t.string :allocate_by, null: false
      t.boolean :allocation_required, null: false, default: true
      t.timestamps
    end
  end
end
