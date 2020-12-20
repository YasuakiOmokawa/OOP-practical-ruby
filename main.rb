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

road_bike = Bicycle.new(
  size: 'L',
  parts: RoadBikeParts.new(tape_color: 'red')
)
p road_bike.size
p road_bike.spares
mountain_bike = Bicycle.new(
  size: 'S',
  parts: MountainBikeParts.new(rear_shock: 'Fox')
)
p mountain_bike.size
p mountain_bike.spares
