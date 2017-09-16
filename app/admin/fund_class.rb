ActiveAdmin.register FundClass do
  permit_params :fund_id, :code, :name, :management_fee, :incentive_fee
end
