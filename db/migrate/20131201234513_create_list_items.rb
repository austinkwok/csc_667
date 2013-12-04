class CreateListItems < ActiveRecord::Migration
  def change
    create_table :list_items do |t|
      t.string :food_id
      t.integer :quantity
      t.string :type
      t.integer :list_id

      t.timestamps
    end
  end
end
