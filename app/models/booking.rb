class Booking < ApplicationRecord
  belongs_to :user
  has_many :children_pools, dependent: :destroy
  has_many :children, through: :children_pools, dependent: :destroy

  validates :start_date, presence: true
  validates :category, presence: true
  #validates :end_date, comparison: { greater_than: :start_date }

  def period
    start_date..end_date
  end
end
