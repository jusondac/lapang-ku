class Rent < ApplicationRecord
  belongs_to :field
  belongs_to :rent_detail
  has_many :rent_membership, foreign_key: :rent_id
end
