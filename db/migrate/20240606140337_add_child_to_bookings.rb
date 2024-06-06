class AddChildToBookings < ActiveRecord::Migration[7.1]
  def change
    add_reference :bookings, :child, null: false, foreign_key: true
  end
end
