def fibonacci(n)
	if n == 0
		return 1
	elsif n == 1
		return 1
	else
		return fibonacci(n - 1) + fibonacci(n - 2)
	end
end

for i in 0 .. 100
	puts("#{i} #{fibonacci(i)}")
end
