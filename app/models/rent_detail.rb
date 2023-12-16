class RentDetail < ApplicationRecord
  belongs_to :membership, optional: true
end
