class AddDescriptionToBookings < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :description, :string

  end
end
