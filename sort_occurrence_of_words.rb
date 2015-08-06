=begin
  Get the occurrence of every word in a file and then sort
  the words by occurrence. If one word has more than one word
  has the same occurrence, sort it alphabetically.
=end

def sort_by_occurrence
  word_arr, occ_arr, i = [], [], 0
  f = File.readlines("word_file.txt")
  f.each do |line|
    word_arr = line
  end
  puts 'Contents of file: ',"\n" "#{word_arr}", "\n"
  word_arr = word_arr.split(" ")
  p word_frequency = word_arr.group_by { |w| w }.map { |w, ws| [w, ws.length] }.sort_by {|k, v| v}.join(" ").gsub(/\d+/, "")
end

sort_by_occurrence
