def fib_iter(n)
  fib_0 = 0
	fib_1 = 1
	for i in 0...n
		temp = fib_0
		fib_0 = fib_1
		fib_1 = temp + fib_1
	end
	return fib_1
 end
