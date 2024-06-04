class CreateFamilies < ActiveRecord::Migration[7.1]
  def change
    create_table :families do |t|
      t.string :family_name
      t.string :home_address
      t.integer :point_count
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
