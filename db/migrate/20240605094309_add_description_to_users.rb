class AddDescriptionToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :presentation, :text
  end
end
