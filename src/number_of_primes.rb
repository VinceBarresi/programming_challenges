=begin
  Write a function that counts the number of 
  primes within a range of numbers.
=end

# O(n^2)
def number_of_primes range
  prime_count, i, range_arr = 0, 2, range.to_a
  range_arr.delete(0) if range_arr.include?(0)
  range_arr.each do |n|
    prime = true
    while i <= Math.sqrt(n) do
      prime = false if n % i == 0
      i += 1
    end
    i = 2
    prime_count += 1 if prime != false
  end
  prime_count
end
