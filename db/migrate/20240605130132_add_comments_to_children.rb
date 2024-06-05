class AddCommentsToChildren < ActiveRecord::Migration[7.1]
  def change
    add_column :children, :child_comment, :text
  end
end
