class CreateHolidays < ActiveRecord::Migration[6.0]
  def change
    create_table :holidays do |t|
      t.string :city
      t.string :country
      t.text :description
      t.integer :rating

      t.timestamps
    end
  end
end
