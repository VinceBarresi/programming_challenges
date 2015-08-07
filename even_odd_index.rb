=begin
  Sort an array so the even value integers are in even
  indeces and the odd value integers are in odd indeces.
=end

arr = []
  
rand(50).times do |i|
  arr[i] = rand(10)
end
  
puts 'Unsorted Random Array: '"#{arr}"
puts "\n"

def even_odd arr
  sort_arr, i, j, k = [], 0, 0, 1
  0.upto(arr.size - 1) do
    if arr[i] % 2 == 0 
      sort_arr[j] = arr[i]
      j += 2
    else
      sort_arr[k] = arr[i]
      k += 2
    end
    i += 1
  end
  p 'Array sorted with even vales in even indeces and odd values in odd indeces: '"#{sort_arr}"
end

even_odd arr
