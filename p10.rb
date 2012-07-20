#!/usr/bin/env ruby

def primes_under_n(n)
  # quick and dirty sieve
  nums = [[1, false]]
  2.upto(n) do |i|
    nums << [i, true]
  end  

  primes = []
  last_i = 0
  while true
    prime = nil
    (last_i + 1).upto(n) do |i|
      prime_candidate, is_prime = nums[i]
      if is_prime
        prime = prime_candidate
        primes << prime
        last_i = i
        break
      end  
    end  

    if prime.nil?
      break
    end  

    prime.upto(n / prime) do |i|
      not_prime = i * prime
      nums[not_prime - 1] = [not_prime, false]
    end  
  end
  primes
end

def solve
  primes = primes_under_n 2000000
  primes.inject(0) do |sum, n|
    sum + n
  end
end

if __FILE__ == $0
  puts solve
end
