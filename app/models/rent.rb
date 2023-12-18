class Rent < ApplicationRecord
  scope :total_rent, -> { all.count }
  # Ex:- scope :active, -> {where(:active => true)}
  belongs_to :field
  has_many :rent_membership, foreign_key: :rent_id

  def self.not_on_rent(date, field)
    self.where(created_at: date, field_id: field.id).blank?
  end
end
