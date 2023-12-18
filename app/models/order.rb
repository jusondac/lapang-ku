class Order < ApplicationRecord
  belongs_to :rent
  belongs_to :payment
  enum :status, %i(success waiting_payment cancelled )
end
