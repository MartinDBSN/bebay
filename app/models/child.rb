class Child < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, :birthday, presence: true
  validates :child_comment, length: { maximum: 160 }, allow_blank: true
end
