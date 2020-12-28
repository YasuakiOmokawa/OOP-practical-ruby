require 'minitest/autorun'
require_relative '../lib/Gear'
require_relative '../lib/Wheel'

class DiameterDouble
  def diameter
    10
  end
end
class GearTest < MiniTest::Test

  def test_calculates_gear_inches
    gear = Gear.new(chainring: 52, cog: 11,
      wheel: DiameterDouble.new)

    assert_in_delta(47.27, gear.gear_inches, 0.01)
  end
end