=begin
Given a string, store it as digits ("67876")
Now Check if the given str return TWO EQUAL PARTS 
with equal sum (6+7+8=8+7+6).
If it is correct then replace the str(678876) 
in the new string.
Final string should be "12345876678".
=end

def equal_part_sum_string str
  half, i, arr_1, arr_2, sum_1, sum_2 = str.length / 2, 0, [], [], 0, 0
  str.split('').each do |c|
    i < half ? arr_1 << c : arr_2 << c
    i += 1
  end
  0.upto(arr_1.size) do |i|
    sum_1 += i
  end
  0.upto(arr_2.size) do |i|
    sum_2 += i
  end
  if sum_1 == sum_2
    str = '12345' + arr_2.join + arr_1.join
  end
end

p equal_part_sum_string '678876'
