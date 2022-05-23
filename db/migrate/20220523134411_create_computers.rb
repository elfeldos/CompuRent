class CreateComputers < ActiveRecord::Migration[6.1]
  def change
    create_table :computers do |t|
      t.string :name
      t.string :category
      t.integer :year
      t.text :details
      t.boolean :availiability
      t.float :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
