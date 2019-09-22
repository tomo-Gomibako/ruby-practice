puts "Type your name."
name = gets.strip
name = name.empty? ? "anonymous" : name[0].upcase + name[1..]
puts "Hello, #{name}!"
