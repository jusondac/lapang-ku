class Membership < ApplicationRecord
  scope :total_member, -> { all.count }
  scope :total_income, -> { eager_load(:type_membership).sum { |x| x.type_membership.charge } }
  # Ex:- scope :active, -> {where(:active => true)}
  belongs_to :type_membership

  def self.ransackable_attributes(auth_object = nil)
    %w[name created_at updated_at]
  end

  def self.ransackable_associations(auth_object = nil)
  end
end
