class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :calories
      t.integer :sodium
      t.integer :totalfat
      t.integer :saturated
      t.integer :polyunsaturated
      t.integer :monosaturated
      t.integer :transfat
      t.integer :cholesterol
      t.integer :potassium
      t.integer :carbs
      t.integer :fiber
      t.integer :sugar
      t.integer :protein

      t.timestamps
    end
  end
end
