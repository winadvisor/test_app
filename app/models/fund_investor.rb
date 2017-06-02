class FundInvestor < ApplicationRecord
  belongs_to :fund
  belongs_to :fund_class
  belongs_to :entity
end
