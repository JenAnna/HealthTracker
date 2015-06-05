require 'test_helper'

class PedometerReadingTest < ActiveSupport::TestCase
  test "calories" do
    assert_equal 50, pedometer_readings(:one).calories
  end

  test "miles" do
    assert_equal 1, pedometer_readings(:two).miles
  end

  test "daily steps" do
    assert_equal 2750, PedometerReading.daily_steps
  end

  test "daily steps calorie burn" do
    assert_equal 400, PedometerReading.daily_step_calories
  end

  # test "the truth" do
  #   assert true
  # end
end
