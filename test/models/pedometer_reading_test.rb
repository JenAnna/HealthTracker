require 'test_helper'

class PedometerReadingTest < ActiveSupport::TestCase
  test "calories" do
    assert_equal 1000, :one.calories
  end

  test "miles" do
    assert_equal 10, :two.miles
  end

  # test "the truth" do
  #   assert true
  # end
end
