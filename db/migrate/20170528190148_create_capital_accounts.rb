class CreateCapitalAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :capital_accounts do |t|
      t.string :code, null: false, unique: true
      t.references :fund_class, foreign_key: true, null: false
      t.references :entity, foreign_key: true, null: false

      t.timestamps
    end
  end
end
