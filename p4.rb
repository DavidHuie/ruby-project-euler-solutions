#!/usr/bin/env ruby

def is_palindrome(n)
  n == n.to_s.reverse.to_i
end

def solve
  palindromes = []
  1.upto(999) do |i|
    1.upto(999) do |j|
      candidate = i * j
      if is_palindrome(candidate)
        palindromes << candidate
      end   
    end
  end  
  palindromes.max
end

if __FILE__ == $0
  puts solve
end
