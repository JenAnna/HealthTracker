require 'test_helper'

class CalorieIntakeTest < ActiveSupport::TestCase
  test "total calories" do
    assert_equal 3500, calorie_intakes(:one).calorie_total
  end

  test "input date" do
    assert_equal "2015-06-11".to_date, calorie_intakes(:two).input_date
  end
end
