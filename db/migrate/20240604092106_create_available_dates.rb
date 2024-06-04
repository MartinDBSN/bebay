class CreateAvailableDates < ActiveRecord::Migration[7.1]
  def change
    create_table :available_dates do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.string :category
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
