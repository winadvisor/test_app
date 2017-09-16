class CreateFundEntities < ActiveRecord::Migration[5.0]
  def change
    create_table :fund_entities do |t|
      t.references :fund, foreign_key: true, null: false
      t.references :entity, foreign_key: true, null: false
      t.timestamps
    end
  end
end
