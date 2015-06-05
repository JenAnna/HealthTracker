require 'test_helper'

class ExerciseTest < ActiveSupport::TestCase

  test "calories burned" do
    t = ExerciseType.create!(description: "fake", calories_burned_per_minute: 10)
    run = Exercise.create!(exercise_type_id: t.id, time_in_minutes: 30, description: "Running", date: Date.today)
    assert_equal 300, run.calculate_calories_burned
  end

  test "daily calorie burn" do
    t = ExerciseType.create!(description: "fake", calories_burned_per_minute: 10)
    run = Exercise.create!(exercise_type_id: t.id, time_in_minutes: 30, description: "Running", date: Date.today)
    run2 = Exercise.create!(exercise_type_id: t.id, time_in_minutes: 30, description: "Running", date: Time.new(2014, 06, 01))
    run3 = Exercise.create!(exercise_type_id: t.id, time_in_minutes: 45, description: "Running", date: Date.today)
    assert_equal 400, Exercise.daily_calories_burned
  end
end
