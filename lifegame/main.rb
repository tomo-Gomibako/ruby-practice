require_relative "./modules/Map"

map = Map.new(15, 15)

map.randomize
for i in 0 .. 100
	map.output
	map.update
	sleep 0.3
end
