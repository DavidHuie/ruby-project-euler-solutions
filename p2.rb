#!/usr/bin/env ruby

def fib
  sums = 0
  fib1 = 1
  fib2 = 1

  while fib2 < 4000000

    if fib2 % 2 == 0
      sums += fib2
    end

    new_fib = fib1 + fib2
    fib1, fib2 = fib2, new_fib
  end

  sums
end

if __FILE__ == $0
  puts fib
end
