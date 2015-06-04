class CreateExerciseTypes < ActiveRecord::Migration
  def change
    create_table :exercise_types do |t|
      t.string :description
      t.integer :calories_burned_per_minute

      t.timestamps null: false
    end
  end
end
