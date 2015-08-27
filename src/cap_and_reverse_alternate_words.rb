=begin 
  Write a program to modify a string in the following 
  pattern: Change odd words to uppercase and reverse even
  words. Make sure the spaces in the word stay as is.
=end

def cap_and_reverse_alternate str
  arr_string, arr, = str.split, []
  0.upto(arr_string.size - 1) do |i|
    current_word = arr_string[i]
    i % 2 == 0 ? arr[i] = current_word.reverse : arr[i] = current_word.swapcase
  end
  arr.join(' ')
end

cap_and_reverse_alternate 'this is a test string'
