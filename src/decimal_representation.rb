=begin
  Write a function which given two integers (numerator
  and denominator) which prints the decimal representation
  of the rational number numerator/denominator.
=end

# O(n)
def decimal_representation x, y 
  temp = (x.to_f / y).round(2).to_s.split('')
  a, rem = temp[0], temp[1..temp.size-1]
  rem.size-1.times do |i|
    rem.insert(i+1, '(') if rem[i] == '.'
    i+=1
  end
  rem.insert(rem.size, ')')
  a.to_s + rem.join
end

