class CreateInvestmentSeries < ActiveRecord::Migration[5.0]
  def change
    create_table :investment_series do |t|
      t.references :investment, foreign_key: true, null: false
      t.references :fund_series, foreign_key: true, null: false
      t.timestamps null: false
    end
  end
end
