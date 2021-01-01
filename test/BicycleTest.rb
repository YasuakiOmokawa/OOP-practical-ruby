require 'minitest/autorun'
require_relative './module/BicycleInterfaceTest'
require_relative './module/BicycleSubclassTest'
require_relative '../lib/Bicycle'

class StubbedBike < Bicycle
  def default_tire_size
    0
  end
  def local_spares
    {saddle: 'painful'}
  end
end

class StubbedBikeTest < MiniTest::Test
  include BicycleSubclassTest

  def setup
    @object = StubbedBike.new
  end
end
class BicycleTest < MiniTest::Test
  include BicycleInterfaceTest

  def setup
    @bike = @object = Bicycle.new({tire_size: 0})
    @stubbed_bike = StubbedBike.new
  end

  def test_forces_subclass_to_implement_default_tire_size
    assert_raises(NotImplementedError) {@bike.default_tire_size}
  end

  def test_includes_local_spares_in_spares
    assert_equal @stubbed_bike.spares,
      {tire_size: 0, chain: '10-speed', saddle: 'painful'}
  end
end