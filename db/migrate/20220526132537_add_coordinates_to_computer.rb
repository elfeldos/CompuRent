class AddCoordinatesToComputer < ActiveRecord::Migration[6.1]
  def change
    add_column :computers, :latitude, :float
    add_column :computers, :longitude, :float
  end
end
