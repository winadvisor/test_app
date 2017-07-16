class Investment < ApplicationRecord
  belongs_to :fund_class
  belongs_to :entity
  belongs_to :series

  def to_s
    self.id
  end
end
