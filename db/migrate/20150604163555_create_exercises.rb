class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.integer :exercise_type_id
      t.integer :calories_burned
      t.integer :time_in_minutes
      t.string :description
      t.date :date

      t.timestamps null: false
    end
  end
end
