=begin
	Write a function that receives three integer inputs 
	for the lengths of the sides of a triangle and returns 
	one of four values to determine the triangle type 
	(1=scalene, 2=isosceles, 3=equilateral, 4=error). 
	Generate test cases for the function assuming another 
	developer coded the function.
=end

def determine_triangle
  x = gets.chomp
  y = gets.chomp
  z = gets.chomp
  return 'error' if (x.empty? ||  y.empty? || z.empty? || x == nil ||  y == nil || z == nil)
  if ((x != y) && (y != z) && (x != z))
    return 'scalene'
    elsif ((x == y && y != z) || (z == y && z != x) || (x == z && z != y))
      return 'isosceles'
    elsif ((x == y) && (y == z))
      return 'equilateral'
    else 
      return 'error'
    end
end
