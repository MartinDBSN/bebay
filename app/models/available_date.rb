class AvailableDate < ApplicationRecord
  belongs_to :user
  # add validation overlap
end
