class AddFamilyToBookings < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :welcome_family_id, :bigint, null: false
  end
end
