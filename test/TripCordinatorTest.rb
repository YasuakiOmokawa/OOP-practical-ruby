require 'minitest/autorun'
require_relative './module/PrepareInterfaceTest'
require_relative '../lib/TripCordinator'

class TripCordinatorTest < MiniTest::Test
  include PrepareInterfaceTest

  def setup
    @trip_cordinator = @object = TripCordinator.new
  end
end