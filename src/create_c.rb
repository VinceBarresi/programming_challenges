=begin
	Given 2 large number A and B, create a new number C 
	using the digits from A which needs to be grater than B. 
	e.g. A = 5281, B = 7443 
	C = 8125.
=end

# O(n)
def create_c a, b
	c = a.to_s.split('').sort.reverse.join.to_i
	c < b ? nil : c
end

p create_c 5281, 7443
