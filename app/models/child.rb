class Child < ApplicationRecord
  belongs_to :user
  has_many :children_pools
  has_many :bookings, through: :children_pools

  validates :name, :birthday, presence: true
  validates :child_comment, length: { maximum: 255 }, allow_blank: true

  has_one_attached :child_photo
end
