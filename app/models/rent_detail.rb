class RentDetail < ApplicationRecord
  belongs_to :membership, optional: true
  has_one :rent
  scope :membership_discount, -> { membership.type_membership.discount }
  # Ex:- scope :active, -> {where(:active => true)}

  def self.membership?
    self.membership.nil?
  end
end
