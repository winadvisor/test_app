class Investment < ApplicationRecord
  belongs_to :fund_investor

  def to_s
    self.id
  end
end
