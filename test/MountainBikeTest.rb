require 'minitest/autorun'
require_relative './module/BicycleInterfaceTest'
require_relative './module/BicycleSubclassTest'
require_relative '../lib/Bicycle'
require_relative '../lib/MountainBike'

class MountainBikeTest < MiniTest::Test
  include BicycleInterfaceTest
  include BicycleSubclassTest

  def setup
    @bike = @object = MountainBike.new
  end
end