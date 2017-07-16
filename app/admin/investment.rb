ActiveAdmin.register Investment do
  permit_params :fund_class_id, :entity_id, :series, :capital_account_code, :amount_contributed
end
