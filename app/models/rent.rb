class Rent < ApplicationRecord
  scope :total_rent, -> { all.count }
  scope :rent_of_day, ->(date) {where(start: date.beginning_of_day..date.end_of_day)}
  # scope :rent_of_week ->(date) {}
  # Ex:- scope :active, -> {where(:active => true)}
  belongs_to :field
  has_one :rent_detail
  has_many :rent_membership, foreign_key: :rent_id

  def self.not_on_rent(date, field)
    self.where(created_at: date, field_id: field.id).blank?
  end
end
