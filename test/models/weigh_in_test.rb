require 'test_helper'

class WeighInTest < ActiveSupport::TestCase
  test "how much weight lost" do
    assert_equal 20, WeighIn.lost
  end

  test "enter weight once daily" do
    assert_raises(StandardError) do WeighIn.create!(weight: 120, date: Date.today) end
  end
end
