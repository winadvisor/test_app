class FundInvestor < ApplicationRecord
  belongs_to :fund_class
  belongs_to :entity

  def to_s
    self.id
  end
end
