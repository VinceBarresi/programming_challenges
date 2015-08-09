=begin
  Write code to add two integers with using +, you
  can only use ++ or --.
  BONUS
  How would you handle negative integers?
=end

def sum a, b
  puts 'a is '"#{a}", 'b is '"#{b}"
  while b != 0
    carry = a & b # bitwise AND of two
    a = a^b # binary XOR - copies bit to a from b if not set in b
    b = carry << 1
  end
  puts a
end

sum rand(-20), rand(100)
