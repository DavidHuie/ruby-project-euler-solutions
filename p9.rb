#!/usr/bin/env ruby

def solve
  nums = (1..1000).to_a
  squares = nums.map do |n|
    n**2
  end

  candidates = []
  squares.each do |a|
    b_candidates = squares.select do |b|
      b > a
    end

    b_candidates.each do |b|
      if squares.include? a + b
        candidates << [a, b, a + b]
      end  
    end  
  end  
  
  candidates = candidates.select do |a, b, c|
    Math.sqrt(a) + Math.sqrt(b) + Math.sqrt(c) == 1000
  end

  answer = candidates[0].inject(1) do |product, n|
    product * Math.sqrt(n)
  end  

  answer
end

if __FILE__ == $0
  puts solve
end
