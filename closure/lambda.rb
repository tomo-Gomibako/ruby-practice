pascal = ->(str) { str.split.map{ |word| word[0].upcase + word[1..] }.join() }
puts pascal.call "abc def ghi"
