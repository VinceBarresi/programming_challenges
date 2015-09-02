=begin
  Return index of sorted array at a key value
=end

arr = [1, 2, 2, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10]

# O(n)
def index_at_key key, arr
  puts 'key is: ' + key.to_s
  i, j, key_arr = 0, 0, []
  while i <= arr.size - 1
    if arr[i] == key
      key_arr[j] = i
      j += 1
    end
    i += 1
  end
  key_arr.join(', ')
end

index_at_key rand(1..10), arr
