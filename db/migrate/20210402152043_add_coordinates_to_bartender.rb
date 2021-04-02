class AddCoordinatesToBartender < ActiveRecord::Migration[6.1]
  def change
    add_column :bartenders, :latitude, :float
    add_column :bartenders, :longitude, :float
  end
end
