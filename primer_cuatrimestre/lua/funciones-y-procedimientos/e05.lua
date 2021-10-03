function fibonacci(n)
	if n <= 2 then
        return n
	else
		fib1, fib2, fib = 1, 1, 1
		for i = 3,n do
			fib = fib1 + fib2
			fib1 = fib2
			fib2 = fib
		end
		return fib
	end
end

