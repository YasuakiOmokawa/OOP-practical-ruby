require 'minitest/autorun'
require_relative './module/PrepareInterfaceTest'
require_relative '../lib/Driver'

class DriverTest < MiniTest::Test
  include PrepareInterfaceTest

  def setup
    @driver = @object = Driver.new
  end
end