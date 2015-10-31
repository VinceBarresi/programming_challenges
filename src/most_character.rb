=begin
  Given a string, determine which character
  appears the most and print it.
=end

# O(n)
def most_char str
  max, letter, i, count, str_arr, = 0, '', 0, [], str.split("")
  str_arr.each do |c|
    count += [str.count(c)]
    max, letter = count[i], str_arr[i] if count[i] > max
    i += 1
  end
  letter
end

