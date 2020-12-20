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
puts RoadBike.new(size: 'S', tape_color: 'red').spares
puts MountainBike.new(size: 'S', front_shock: 'front', rear_shock: 'rear').spares
puts RecumbentBike.new(flag: 'tall and orange').spares

require 'date'
starting = Date.parse('2020/12/04')
ending = Date.parse('2020/12/10')

b = Bicycle.new(tire_size: 10)
b.schedulable?(starting, ending)

v = Vehicle.new
v.schedulable?(starting, ending)
