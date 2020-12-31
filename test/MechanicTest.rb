require 'minitest/autorun'
require_relative './module/PrepareInterfaceTest'
require_relative '../lib/module/Schedulable'
require_relative '../lib/Mechanic'

class MechanicTest < MiniTest::Test
  include PrepareInterfaceTest

  def setup
    @mechanic = @object = Mechanic.new
  end
end