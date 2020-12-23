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

p '----- chap 8'
road_config = [
  ['chain', '10-speed'],
  ['tire_size', '23'],
  ['tape_color', 'red']
]
road_bike = Bicycle.new(
  size: 'L',
  parts: PartsFactory.build(road_config)
)
p road_bike.size
p road_bike.spares
p road_bike.parts.size
mountain_config = [
  ['chain', '10-speed'],
  ['tire_size', '2.1'],
  ['front_shock', 'Manitou', false],
  ['rear_shock', 'Fox']
]
mountain_bike = Bicycle.new(
  size: 'S',
  parts: PartsFactory.build(mountain_config)
)
p mountain_bike.size
p mountain_bike.spares
p mountain_bike.spares.size
p mountain_bike.parts.size
