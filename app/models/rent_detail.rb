class RentDetail < ApplicationRecord
  belongs_to :membership, optional: true
  has_one :rent
end
