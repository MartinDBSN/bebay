class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :family_name, :home_address, presence: true
  has_many :children, dependent: :destroy
  has_many :available_dates
  has_many :bookings, dependent: :destroy
end
