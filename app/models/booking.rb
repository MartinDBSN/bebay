class Booking < ApplicationRecord
  belongs_to :user
  has_many :children_pools

  validates :start_date, :end_date, presence: true
  validates :end_date, comparison: { greater_than: :start_date }
  validate :dates_cannot_overlap

  def period
    start_date..end_date
  end

  private

  def dates_cannot_overlap
    @bookings = Booking.all.where(user: user)
    is_overlapping = @bookings.any? do |booking|
      if (booking.start_date > start_date) && (booking.end_date > end_date)
        return false
      elsif (booking.start_date < start_date) && (booking.end_date < end_date)
       return false
      else
        return true
      end
    end
    errors.add(:overlaps_with_other) if is_overlapping
  end
end