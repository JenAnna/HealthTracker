class CreateCalorieIntakes < ActiveRecord::Migration
  def change
    create_table :calorie_intakes do |t|
      t.integer :calories

      t.timestamps null: false
    end
  end
end
