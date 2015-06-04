require 'test_helper'

class CalorieIntakeTest < ActiveSupport::TestCase
  test "total calories" do
    assert_equal 3500, calorie_intakes(:one).calories
  end

  test "date" do
    assert_equal "2015-05-05".to_date, calorie_intakes(:two).date
  end

  test "daily calorie intake" do
    assert_equal 450, CalorieIntake.calories_today
  end
end
