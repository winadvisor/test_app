class CreateSeries < ActiveRecord::Migration[5.0]
  def change
    create_table :series do |t|
      t.string :code, null: false
      t.string :name, null: false
      t.date :start_date
      t.timestamps null: false
    end
  end
end
