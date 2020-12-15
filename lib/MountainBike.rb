class MountainBike < Bicycle
  attr_reader :front_shock, :rear_shock

  def initialize(size:, chain: nil, tire_size: nil, front_shock:, rear_shock:)
    @front_shock = front_shock
    @rear_shock = rear_shock
    super(size: size, chain: chain, tire_size: tire_size)
  end

  def spares
    super.merge({
      rear_shock: rear_shock
    })
  end

  def default_tire_size
    '2.1'
  end
end