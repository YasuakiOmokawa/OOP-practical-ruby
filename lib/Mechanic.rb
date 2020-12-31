class Mechanic
  include Schedulable

  def prepare_trip(trip)
    trip.bicycles.each {|bicycle|
      prepare_bicycle(bicycle)
    }
  end

  def lead_days
    4
  end
end