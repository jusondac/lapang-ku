class RentDetail < ApplicationRecord
  belongs_to :membership, optional: true
  has_one :rent
  scope :membership_discount, -> { includes(membership: [:type_membership]).membership.type_membership.discount }
  # Ex:- scope :active, -> {where(:active => true)}

  def is_member?
    self.membership.nil?
  end
end
