class AddPrecessorToComputers < ActiveRecord::Migration[6.1]
  def change
    add_column :computers, :processor, :string
    add_column :computers, :ram, :string
    add_column :computers, :storage, :string
    add_column :computers, :graphic_card, :string
  end
end
