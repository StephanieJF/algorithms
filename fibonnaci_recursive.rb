def fib_rec(n)
  if (n == 0)
    return 0
  elsif (n == 1)
    return 1
  else
    return fib_rec(n-1) + fib_rec(n-2)
  end
end
