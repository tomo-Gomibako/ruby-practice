$memo = [1, 1]

def fibonacci(n)
	memo = $memo
	if memo.length > n && !memo[n].nil?
		return memo[n]
	else
		memo += Array.new(n - memo.length)
		return memo[n] = fibonacci(n - 1) + fibonacci(n - 2)
	end
end

for i in 0 .. 100
	puts("#{i} #{fibonacci(i)}")
end
