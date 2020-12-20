class Bicycle
  include Schedulable

  attr_reader :size, :parts

  def initialize(args={})
    @size = args[:size]
    @parts = args[:parts]
  end

  def spares
    parts.spares
  end

  def lead_days
    1
  end
end