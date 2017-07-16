ActiveAdmin.register Fund do
  permit_params :code, :name, :parent_id, :fund_type
end
