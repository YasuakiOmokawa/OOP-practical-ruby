class RoadBike < Bicycle
  attr_reader :tape_color

  def initialize(size:, chain: nil, tire_size: nil, tape_color:)
    @tape_color = tape_color
    super(size: size, chain: chain, tire_size: tire_size)
  end

  def spares
    super.merge({
      tape_color: tape_color
    })
  end

  def default_tire_size
    '23'
  end
end