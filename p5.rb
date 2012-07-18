#!/usr/bin/env ruby

def divisible(n)
  20.downto(1) do |i|
    if n % i != 0
      return false
    end
  end  
  return true
end

def solve
  n = 20
  while true:
    if divisible(n)
      return n
    else
      n += 20
    end  
  end  
end


if __FILE__ == $0
  puts solve
end
