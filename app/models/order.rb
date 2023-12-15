class Order < ApplicationRecord
  belongs_to :rent
  belongs_to :payment
end
