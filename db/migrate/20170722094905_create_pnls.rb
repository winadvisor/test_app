class CreatePnls < ActiveRecord::Migration[5.0]
  def change
    create_table :pnls do |t|
      t.references :capital_account, foreign_key: true, null: false
      t.date :start_date, null: false

      t.float :beginning_gross_capital_contributed
      t.float :beginning_net_capital_contributed
      t.float :beginning_shares_contributed
      t.float :starting_shares # == beginning_shares_contributed

      t.float :starting_gross_capital
      t.float :starting_net_capital
      t.float :starting_charged_incentive_fee
      t.float :starting_capital_percentages
      t.float :starting_new_issue_capital_percentages

      t.float :total_pnl_allocation # Check if we require in this table or pnl_allocations
      t.float :ending_gross_capital # starting_gross_capital + total_pnl_allocation

      t.float :ending_gross_capital_contributed
      t.float :ending_net_capital_contributed
      t.float :ending_shares_contributed
      t.float :ending_shares # starting_shares + ending_shares_contributed
      t.float :current_highwater_mark # It will be same for all months till we have any withdrawal/deposits in the account
      t.float :incentive_fees # (ending_gross_capital - current_highwater_mark)*incentive_fee_percentage
      # incentive_fee_percentage can be found out from investments -> fund_class
      # We may need to create capital_account_codes table which has fund_class/entity associated with capital_account_code and we may get incentive_fee_percentage from that table.
      # In this case, we will remove fund_class/entity/capital_account_code from investments and add capital_account_code_id as a reference column

      t.float :ending_net_capital # ending_gross_capital - incentive_fees

      t.timestamps
    end

    add_index :pnls, [ :capital_account_id, :start_date ]
  end
end
