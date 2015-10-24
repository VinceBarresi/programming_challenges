=begin
Given a string, store it as digits ("67876")
Now Check if the given str return TWO EQUAL PARTS 
with equal sum (6+7+8=8+7+6).
If it is correct then replace the str(678876) 
in the new string.
Final string should be "12345876678".
=end

# O(n)
def equal_parts_sum_string str
  half, i, arr_1, arr_2, sum_1, sum_2 = str.length / 2, 0, [], [], 0, 0
  str.split('').each do |c|
    i < half ? arr_1 << c : arr_2 << c
    i += 1
  end
  0.upto(arr_1.size) { |i| sum_1 += i }
  0.upto(arr_2.size) { |i| sum_2 += i }
  str = '12345' + arr_2.join + arr_1.join if sum_1 == sum_2
end

p equal_parts_sum_string '678876'
