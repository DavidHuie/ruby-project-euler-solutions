#!/usr/bin/env ruby

def solve
  (1..999).to_a.select { |i| (i % 3 == 0) or (i % 5 == 0) }.inject(0) { |sum, n| sum + n }
end

if __FILE__ == $0
  puts solve
end
