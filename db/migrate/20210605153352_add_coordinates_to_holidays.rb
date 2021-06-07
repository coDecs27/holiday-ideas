class AddCoordinatesToHolidays < ActiveRecord::Migration[6.0]
  def change
    add_column :holidays, :latitude, :float
    add_column :holidays, :longitude, :float
  end
end
