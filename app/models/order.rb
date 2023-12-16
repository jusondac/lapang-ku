class Order < ApplicationRecord
  belongs_to :rent
  belongs_to :payment
  enum :status, %i(success canceled waiting_payment)
end
