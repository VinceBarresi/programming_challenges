=begin
  Check if a number is prime
=end

def is_prime? n
  return true if n == 2
  return false if n < 2 || n % 2 == 0
  i = 3
  while i <= Math.sqrt(n) do
    return false if n % i == 0
    i += 2
  end
  return true
end

p is_prime? 15
