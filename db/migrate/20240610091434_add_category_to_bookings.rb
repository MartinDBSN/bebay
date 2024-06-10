class AddCategoryToBookings < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :category, :string
  end
end
