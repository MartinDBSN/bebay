class CreateChildrenPools < ActiveRecord::Migration[7.1]
  def change
    create_table :children_pools do |t|

      t.timestamps
    end
  end
end
