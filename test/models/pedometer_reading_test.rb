require 'test_helper'

class PedometerReadingTest < ActiveSupport::TestCase
  test "calories" do
    assert_equal 50, pedometer_readings(:one).calories
  end

  test "miles" do
    assert_equal 1, pedometer_readings(:two).miles
  end

  # test "the truth" do
  #   assert true
  # end
end
