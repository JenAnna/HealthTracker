require 'test_helper'

class ExerciseTest < ActiveSupport::TestCase

  test "calories burned" do
    t = ExerciseType.create!(description: "fake", calories_burned_per_minute: 10)
    p run = Exercise.create!(exercise_type_id: t.id, time_in_minutes: 30, description: "Running", date: Date.today)
    assert_equal 300, run.calculate_calories_burned
  end

  test "daily calorie burn" do
    assert_equal 500, Exercise.daily_calories_burned
  end
end
