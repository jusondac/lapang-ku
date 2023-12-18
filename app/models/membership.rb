class Membership < ApplicationRecord
  scope :total_member, -> { all.count }
  scope :total_income, -> { eager_load(:type_membership).sum { |x| x.type_membership.charge } }
  # Ex:- scope :active, -> {where(:active => true)}
  belongs_to :type_membership
end
