require_relative "./Cell"

class Map
	def initialize(width, height)
		@field = (1 .. height).map {
			(1 .. width).map {
				Cell.new
			}
		}

		@field.map.with_index { |row, y|
			row.map.with_index { |cell, x|
				px = x - 1
				nx = x + 1
				py = y - 1
				ny = y + 1

				# 0 1 2
				# 3 _ 4
				# 5 6 7

				cell.around[0] = px >= 0 && py >= 0 ? @field[py][px] : nil
				cell.around[1] = py >= 0 ? @field[py][x] : nil
				cell.around[2] = nx < width && py >= 0 ? @field[py][nx] : nil
				cell.around[3] = px >= 0 ? @field[y][px] : nil
				cell.around[4] = nx < width ? @field[y][nx] : nil
				cell.around[5] = px >= 0 && ny < height ? @field[ny][px] : nil
				cell.around[6] = ny < height ? @field[ny][x] : nil
				cell.around[7] = nx < width && ny < height ? @field[ny][nx] : nil
			}
		}
	end

	def randomize
		@field.each { |row|
			row.each { |cell|
				cell.alive = rand(2) == 1
			}
		}
	end
	
	def update
		@field.each { |row|
			row.each { |cell|
				cell.set_next_state
			}
		}
		@field.each { |row|
			row.each { |cell|
				cell.update_state
			}
		}
	end

	def output
		@field.each { |row|
			row.each { |cell|
				print cell.alive ? "@" : "_"
			}
			puts ""
		}
		puts ""
	end
end
