class CreateGroceryLists < ActiveRecord::Migration
  def change
    create_table :grocery_lists do |t|
      t.integer :user_id
      t.string :list_id
      t.date :date

      t.timestamps
    end
  end
end
