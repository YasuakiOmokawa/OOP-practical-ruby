require 'minitest/autorun'
require_relative './module/BicycleInterfaceTest'
require_relative '../lib/Bicycle'

class BicycleTest < MiniTest::Test
  include BicycleInterfaceTest

  def setup
    @bike = @object = Bicycle.new({tire_size: 0})
  end
end