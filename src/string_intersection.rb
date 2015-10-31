=begin
  Write a function that takes two lists 
  of strings and return a list of strings 
  with all of the intersections of the strings
=end

# O(n^2)
def string_intersection str1, str2
  intersection = []
  bigger = (str1.split(' ').size > str2.split(' ').size ? str1 : str2)
  smaller = (str1.split(' ').size < str2.split(' ').size ? str1 : str2)
  bigger.split(' ').each {|key| intersection << key if smaller.include?(key) }
  intersection.join
end
