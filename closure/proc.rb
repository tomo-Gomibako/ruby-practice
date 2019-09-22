snake = Proc.new { |str| str.split.join("_") }
puts snake.call "abc def ghi"
