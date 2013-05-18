#This gets you the correct answer, but here's a look at cleaning it up.

##    THis comparisson for the palindrome is great, but it doesn't have to be done in a seperate method, 
##    I Did tweek it a little bit, but not much, honestly probably wouldn't make a difference       
##                        => (n).to_s == (n).to_s.reverse <=
#   def is_palindrome(n)
#     n == n.to_s.reverse.to_i
#   end

##    Here I turned it from this   ##
# def solve
#   palindromes = []
#   1.upto(999) do |i|
#     1.upto(999) do |j|
#       candidate = i * j
#       if is_palindrome(candidate)
#         palindromes << candidate
#       end   
#     end
#   end  
#   palindromes.max
# end


##to this this

palindromes = []
100.upto(999) { |x| 100.upto(999) { |y| palindromes << (x * y) if (x * y).to_s == (x * y).to_s.reverse } }
puts palindromes.max

##Just some code condensing.

