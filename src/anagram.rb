=begin
  Write a method to determine if two strings 
  are anagrams of each other. 
  e.g. isAnagram(“secure”, “rescue”) → true 
  e.g. isAnagram(“conifers”, “fir cones”) → true 
  e.g. isAnagram(“google”, “facebook”) → false
=end

# O(n)
def anagram? str1, str2
  str1, str2 = str1.gsub(' ', '').split('').sort.join, str2.gsub(' ', '').split('').sort.join
  str1 == str2 ? true : false
end

