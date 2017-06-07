ActiveAdmin.register FundSeries do
  permit_params :code, :name, :fund_id, :start_date
end
