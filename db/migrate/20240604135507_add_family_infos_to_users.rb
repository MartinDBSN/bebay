class AddFamilyInfosToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :family_name, :string
    add_column :users, :home_address, :string
    add_column :users, :point_count, :integer
  end
end
