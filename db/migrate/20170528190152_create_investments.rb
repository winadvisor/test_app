class CreateInvestments < ActiveRecord::Migration[5.0]
  def change
    create_table :investments do |t|
      t.references :fund_investor, foreign_key: true, null: false
      t.float :amount, null: false
      t.string :capital_account_code, null: false
      t.timestamps null: false
    end
  end
end
