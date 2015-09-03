=begin
  Given a sum find(print) all numbers and their 
  index from an un-ordered array that add up 
  the sum value. 1 4 4 3 7 5 8 as array and sum = 8. 
  So here the code should print 1 (index 0) + 7(index 4) 
  4(index 1)+ 4(index2), and and so on..
=end

# O(n)
def sum_of_index_values sum_arr = [], sum
  sum_hash, i = {}, 0
  sum_arr.each do |x|
    sum_hash.store(i, x)
    i+=1
  end
  0.upto(sum_arr.size-1) do |i|
    remainder = sum - sum_arr[i]
    puts "#{remainder} " + '(index '"#{sum_arr[i]}"')' if sum_hash.include?(remainder)
  end
end

sum_of_index_values sum_arr = [1,4,4,3,7,5,8], 8