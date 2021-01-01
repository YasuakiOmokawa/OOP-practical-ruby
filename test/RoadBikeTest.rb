require 'minitest/autorun'
require_relative './module/BicycleInterfaceTest'
require_relative './module/BicycleSubclassTest'
require_relative '../lib/Bicycle'
require_relative '../lib/RoadBike'

class RoadBikeTest < MiniTest::Test
  include BicycleInterfaceTest
  include BicycleSubclassTest

  def setup
    @bike = @object = RoadBike.new
  end
end