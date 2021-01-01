require 'minitest/autorun'
require_relative './module/BicycleInterfaceTest'
require_relative './module/BicycleSubclassTest'
require_relative '../lib/Bicycle'
require_relative '../lib/RoadBike'

class RoadBikeTest < MiniTest::Test
  include BicycleInterfaceTest
  include BicycleSubclassTest

  def setup
    @bike = @object = RoadBike.new(tape_color: 'red')
  end

  def test_puts_tape_color_in_local_spares
    assert_equal 'red', @bike.local_spares[:tape_color]
  end
end