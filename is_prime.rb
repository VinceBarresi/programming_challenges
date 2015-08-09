=begin
  Check if a number is prime
=end

def is_prime? n
  return true if n == 2
  return false if n < 2 || n % 2 == 0
  i, bool = 1, ''
  n.times do
    bool = n % i == 0 ? true : false
  end
  return bool
end

p is_prime? 9
