class CreateFundInvestors < ActiveRecord::Migration[5.0]
  def change
    create_table :fund_investors do |t|
      t.references :fund_class, foreign_key: true, null: false
      t.references :entity, foreign_key: true, null: false
      t.timestamps null: false
    end
  end
end
