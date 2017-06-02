class CreateFundSeries < ActiveRecord::Migration[5.0]
  def change
    create_table :fund_series do |t|
      t.string :code, null: false
      t.string :name, null: false
      t.references :fund, foreign_key: true, null: false
      t.date :start_date
      t.timestamps null: false
    end
  end
end
