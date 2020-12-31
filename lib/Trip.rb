class Trip
  attr_reader :bicycles, :customers, :vehicle

  def prepare(prepares)
    prepares.each {|preparer|
      preparer.prepare_trip(self)
    }
  end
end