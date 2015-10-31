=begin
  Write a program to find the first unique 
  element in an array.
=end

# O(n)
def first_unique_element arr
  1.upto(arr.size-1) {|i| return arr[i] if arr[i] != arr[i-1]}
end
