#!/usr/bin/env ruby

@@target = 600851475143

def is_prime(n)
  2.upto(n - 1) do |i|
    if n % i == 0:
        return false
    end  
  end  
  return true  
end

def solve
  (@@target**(1.0/2)).to_int.downto(2) do |i|
    if (i % 2 != 0) && (@@target % i == 0) && is_prime(i)
      return i
    end  
  end  
end

if __FILE__ == $0
  puts solve
end
