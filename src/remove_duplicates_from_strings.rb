=begin
  Given two strings, remove the duplicates.
=end

# O(n)
def remove_duplicates str1, str2
  bigger = (str1.length > str2.length ? str1 : str2).split('')
  smaller = (bigger == str1 ? str2 : str1).split('')  
    bigger.each do |c|
      if smaller.include?(c)
        bigger.delete(c)
        smaller.delete(c)
      end
    end
   smaller.join + ' ' + bigger.join
end

p remove_duplicates 'abc', 'cde'
