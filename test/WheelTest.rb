require 'minitest/autorun'
require '../lib/Wheel'

class WheelTest < MiniTest::Test

  def test_calculates_diameter
    wheel = Wheel.new(rim: 26, tire: 1.5)

    assert_in_delta(29, wheel.diameter, 0.01)
  end
end