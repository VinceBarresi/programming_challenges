=begin
  Given array of words, group the anagrams 
  input:{tar,rat,banana,atr} 
  output:{[tar,rat,atr],[banana]}
=end

# O(n^2)
def group_anagrams arr = []
  sort_arr, sort_hash, new_sort_arr = [], {}, []
  arr = arr.each {|w| sort_arr << w.split('').sort.join}
  0.upto(arr.size-1) do |i|
    sort_hash.store(arr[i], sort_arr[i])
  end
  new_sort_arr << sort_hash.sort_by {|k, v| k.length}.to_h.keys[0..arr.size-1]
end 

p group_anagrams ['tar','rat','banana','atr']
