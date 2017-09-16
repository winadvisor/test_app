class Fund < ApplicationRecord

  belongs_to :parent, class_name: 'Fund', foreign_key: :parent_id

  has_many :fund_classes
end
