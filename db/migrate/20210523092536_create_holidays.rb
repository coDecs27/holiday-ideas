class CreateHolidays < ActiveRecord::Migration[6.0]
  def change
    create_table :holidays do |t|
      t.string :name
      t.string :country
      t.string :city
      t.text :description
      t.integer :rating

      t.timestamps
    end
  end
end
