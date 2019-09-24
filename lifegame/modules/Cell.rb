class Cell
	attr_accessor :alive
	attr_reader :around
	
	def initialize
		@alive = false
		@next_state = false
		@around = Array.new 8
	end

	def set_next_state
		count = 0
		@around.each { |cell|
			if !cell.nil? && cell.alive
				count += 1
			end
		}
		if @alive && (count <= 1 || 4 <= count)
			@next_state = false
		elsif !@alive && count == 3
			@next_state = true
		else
			@next_state = @alive
		end

	end

	def update_state
		@alive = @next_state
	end
end
