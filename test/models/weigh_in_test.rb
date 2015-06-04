require 'test_helper'

class WeighInTest < ActiveSupport::TestCase
  test "how much weight lost" do
    assert_equal 20, WeighIn.lost
  end

end
