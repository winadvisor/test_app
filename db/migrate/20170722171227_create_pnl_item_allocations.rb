class CreatePnlItemAllocations < ActiveRecord::Migration[5.0]
  def change
    create_table :pnl_item_allocations do |t|
      t.references :pnl_item, foreign_key: true, null: false
      t.date :start_date
      t.string :allocation_type, null: false
      t.integer :allocation_id, null: false
      t.float :allocated_amount, deefault: 0.0
      t.timestamps
    end
  end
end
