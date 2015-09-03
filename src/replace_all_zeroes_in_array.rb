=begin
  Write a program to replace 0's 
  with 5's in any array given.
=end

# O(n)
def replace_zeroes zero_arr = []
  0.upto(zero_arr.size) {|i| zero_arr[i] += 5 if zero_arr[i] == 0}
  zero_arr
end

p replace_zeroes [0,0,1,0,2,0,0,3]