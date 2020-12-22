Dir[File.expand_path("../lib/module", __FILE__) << '/*.rb'].each do | file |
  require file
end
Dir[File.expand_path("../lib/", __FILE__) << '/*.rb'].each do | file |
  require file
end

@wheel = Wheel.new(rim: 26, tire: 1.5)
puts @wheel.circumference

puts Gear.new(chainring: 52, cog: 11, wheel: @wheel).gear_inches
puts Gear.new(chainring: 52, cog: 11).ratio

require 'date'
starting = Date.parse('2020/12/04')
ending = Date.parse('2020/12/10')
b = Bicycle.new(tire_size: 10)
b.schedulable?(starting, ending)
v = Vehicle.new
v.schedulable?(starting, ending)
m = Mechanic.new
m.schedulable?(starting, ending)

chain = Part.new(name: 'chain', description: '10-speed')
road_tire = Part.new(name: 'tire_size', description: '23')
tape = Part.new(name: 'tape_color', description: 'red')
mountain_tire = Part.new(name: 'tire_size', description: '2.1')
rear_shock = Part.new(name: 'rear_shock', description: 'Fox')
front_shock = Part.new(name: 'front_shock', description: 'Manitou', needs_spare: false)
road_bike_parts = Parts.new([chain, road_tire, tape])
road_bike = Bicycle.new(
  size: 'L',
  parts: Parts.new([chain, road_tire, tape])
)
p road_bike.size
p road_bike.spares
mountain_bike = Bicycle.new(
  size: 'S',
  parts: Parts.new([chain, mountain_tire, front_shock, rear_shock])
)
p mountain_bike.size
p mountain_bike.spares
p mountain_bike.spares.size
p mountain_bike.parts.size

road_config = [
  ['chain', '10-speed'],
  ['tire_size', '23'],
  ['tape_color', 'red']
]
p PartsFactory.build(road_config)
mountain_config = [
  ['chain', '10-speed'],
  ['tire_size', '2.1'],
  ['front_shock', 'Manitou', false],
  ['rear_shock', 'Fox']
]
p PartsFactory.build(mountain_config)
