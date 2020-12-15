class Bicycle
  attr_reader :size, :chain, :tire_size

  def initialize(size:, chain: default_chain, tire_size: default_tire_size)
    @size = size
    @chain = chain
    @tire_size = tire_size
  end

  def spares
    {
      tire_size: tire_size,
      chain: chain
    }
  end

  def default_chain
    '10-speed'
  end

  def default_tire_size
    raise NotImplementedError
  end
end