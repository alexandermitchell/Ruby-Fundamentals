def fibo_finder(n)
	return n if n <= 1
	fibo_finder(n-1) + fibo_finder(n-2)
end