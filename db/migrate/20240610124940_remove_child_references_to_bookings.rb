class RemoveChildReferencesToBookings < ActiveRecord::Migration[7.1]
  def change
    remove_reference :bookings, :child, index: true, foreign_key: true
    add_reference :children_pools, :booking, index: true, foreign_key: true
    add_reference :children_pools, :child, index: true, foreign_key: true
  end
end
