class Order < ApplicationRecord
  belongs_to :rent
  belongs_to :payment
  enum :status, %i(paid unpaid canceled waiting_payment)
end
