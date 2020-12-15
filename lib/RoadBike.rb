class RoadBike < Bicycle
  attr_reader :tape_color

  def post_initialize(args)
    @tape_color = args[:tape_color]
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