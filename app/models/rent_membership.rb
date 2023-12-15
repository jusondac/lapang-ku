class RentMembership < ApplicationRecord
  belongs_to :membership
  belongs_to :rent
end
