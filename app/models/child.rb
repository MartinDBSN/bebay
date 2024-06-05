class Child < ApplicationRecord
  belongs_to :user
  validates :name, :birthday, presence: true
end
