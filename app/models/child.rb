class Child < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :children_pools

  validates :name, :birthday, presence: true
  validates :child_comment, length: { maximum: 255 }, allow_blank: true

  has_one_attached :child_photo
end
