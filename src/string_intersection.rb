=begin
  Write a function that takes two lists 
  of strings and return a list of strings 
  with all of the intersections of the strings
=end

#O(n) solution

def string_intersection str_arr1 = [], str_arr2 = []
  intersection = []
  bigger = (str_arr1.size > str_arr2.size ? str_arr1 : str_arr2)
  smaller = (str_arr1.size < str_arr2.size ? str_arr1 : str_arr2)
  bigger.each do |key|
    if smaller.include?(key)
      intersection << key 
    end
  end
  intersection
end

p string_intersection ['a','a','a', 'b', 'd'], ['a', 'a', 'c', 'd']
