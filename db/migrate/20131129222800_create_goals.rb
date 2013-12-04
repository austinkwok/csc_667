class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.integer :calories
      t.float :weight

      t.timestamps
    end
  end
end
