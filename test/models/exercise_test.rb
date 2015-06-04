require 'test_helper'

class ExerciseTest < ActiveSupport::TestCase

  test "calculate_calories_burned" do
    t = ExerciseType.create!(description: "fake", calories_burned_per_minute: 10)
    run = Exercise.create!(exercise_type_id: t.id, time_in_minutes: 30, description: "Running", date: Date.today)
    assert_equal 300, run.calculate_calories_burned
  end
end
