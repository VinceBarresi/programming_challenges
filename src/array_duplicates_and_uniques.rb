=begin
  Take THREE arrays like arr1=[1,3,5,7,9]
  arr2=[1,2,3,5,4,1,8,9,7] and 
  arr3=[1,3,5,7,9,2,1,4,6,5,8]. Now find out 
  the duplicates of first two(arr1, arr2) 
  arrays and store it in new another 
  array arr4(should contain only 
  duplicates,no unique elements).
  Now compare arr3 with arr4.
  You should return only UNIQUE elements 
  from both of the arrays.
=end

# O(n)
def array_duplicates arr1 = [], arr2 = [], arr3 = []
  bigger1 = (arr1.size > arr2.size ? arr1 : arr2)
  smaller1 = (arr1.size < arr2.size ? arr1 : arr2)
  arr4, arr5 = [], []
  bigger1.each { |c| arr4 << c if smaller1.include?(c) }
  bigger2 = (arr3.size > arr4.size ? arr3 : arr4)
  smaller2 = (arr4.size < arr4.size ? arr3 : arr4)
  bigger2.each { |c| arr5 << c if !smaller2.include?(c) }
  arr5.sort
end

p array_duplicates [1,3,5,7,9], [1,2,3,5,4,1,8,9,7], [1,3,5,7,9,2,1,4,6,5,8]
