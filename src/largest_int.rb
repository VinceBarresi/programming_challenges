=begin
  Given an integer, find the maximum number
  that could be formed from the digits.
=end

# O(n)
def largest_int x
  x.to_s.split('').sort.reverse.join.to_i
end

p largest_int 2912942992124
