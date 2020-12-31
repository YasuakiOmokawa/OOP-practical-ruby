require 'minitest/autorun'
require_relative '../lib/Trip'

class TripTest < MiniTest::Test

  def test_requests_trip_preparation
    @preparer = MiniTest::Mock.new
    @trip = Trip.new
    @preparer.expect(:prepare_trip, nil, [@trip])

    @trip.prepare([@preparer])
    @preparer.verify
  end
end
