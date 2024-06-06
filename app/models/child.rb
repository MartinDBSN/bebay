class Child < ApplicationRecord
  belongs_to :user
  validates :name, :birthday, presence: true
  validates :child_comment, length: { maximum: 160 }, allow_blank: true

  has_one_attached :child_photo
end
