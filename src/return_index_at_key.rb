=begin
  Return index of sorted array at a key value
=end

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
