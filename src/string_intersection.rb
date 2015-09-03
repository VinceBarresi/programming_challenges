=begin
  Write a function that takes two lists 
  of strings and return a list of strings 
  with all of the intersections of the strings
=end

# O(n)
def string_intersection str1, str2
  intersection = []
  bigger = (str1.split(' ').size > str2.split(' ').size ? str1 : str2)
  smaller = (str1.split(' ').size < str2.split(' ').size ? str1 : str2)
  bigger.split(' ').each do |key|
    if smaller.include?(key)
      intersection << key 
    end
  end
  intersection.join
end

p string_intersection 'aaacd', 'aacd'
