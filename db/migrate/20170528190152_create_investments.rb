class CreateInvestments < ActiveRecord::Migration[5.0]
  def change
    create_table :investments do |t|
      t.references :capital_account, foreign_key: true, null: false
      t.references :series, foreign_key: true
      t.float :amount_contributed, null: false
      t.timestamps null: false
    end
  end
end
