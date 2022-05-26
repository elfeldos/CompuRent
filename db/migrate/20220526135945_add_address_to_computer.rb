class AddAddressToComputer < ActiveRecord::Migration[6.1]
  def change
    add_column :computers, :address, :string
  end
end
