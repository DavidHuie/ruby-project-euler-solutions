#!/usr/bin/env ruby

require 'p3'

@@target_prime = 10001

def solve
  primes = []
  2.upto(1.0/0) do |n|
    if is_prime(n)
      primes << n
      printf("%s, %s\n", primes.length, n)
    end
    if primes.length == @@target_prime
      return primes.pop()
    end  
  end
end

if __FILE__ == $0
  puts solve
end
