class OrderDetail < ApplicationRecord
  scope :total_all, -> { sum(:total) }

  belongs_to :order
end
