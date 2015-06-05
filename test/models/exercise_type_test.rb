require 'test_helper'

class ExerciseTypeTest < ActiveSupport::TestCase
  test "exercise type" do
    assert_equal "Aerobics", exercise_types(:one).description
  end
end
