=begin
  Given a string of integers,
  print the sum.
=end

# O(n)	
def sum_string int_str
  x = 0
  int_str.split('').each do |y|
    y = y.to_i
    x += y
  end
  x
end
