class CreateFundClasses < ActiveRecord::Migration[5.0]
  def change
    create_table :fund_classes do |t|
      t.string :code, null: false
      t.string :name, null: false
      t.references :fund, foreign_key: true, null: false
      t.float :management_fee, null: false, default: 0.0
      t.float :incentive_fee, null: false, default: 0.0
      t.string :new_issue, null: false
      t.timestamps null: false
    end
  end
end
