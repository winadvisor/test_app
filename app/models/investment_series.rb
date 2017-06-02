class InvestmentSeries < ApplicationRecord
  belongs_to :investment
  belongs_to :fund_series
end
