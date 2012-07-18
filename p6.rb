#!/usr/bin/env ruby

def solve
  sum_of_numbers = (1..100).inject(0) do |sum, n|
    sum + n
  end  
  sum_of_squares = (1..100).inject(0) do |sum, n|
    sum + n**2
  end

  sum_of_squares - sum_of_numbers**2
end

if __FILE__ == $0
  puts solve
end
