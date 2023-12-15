class Rent < ApplicationRecord
  belongs_to :field
  belongs_to :rent_detail
end
