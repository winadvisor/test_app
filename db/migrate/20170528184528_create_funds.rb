class CreateFunds < ActiveRecord::Migration[5.0]
  def change
    create_table :funds do |t|
      t.string :code, null: false
      t.string :name, null: false
      t.integer :parent_id, null: false, default: 0
      t.string :fund_type, null: false
      t.timestamps null: false
    end
  end
end
