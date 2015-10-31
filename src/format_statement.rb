=begin
  Give this input: Sea!tle is a nice place. Work Hard! have Fun, make HIStory!
  display this output using any language
  Seattle is a nice place. 
  Work hard. 
  Have fun. 
  Make history.
=end

def format_statement
  str = 'Sea!tle is a nice place. Work Hard! have Fun, make HIStory!'
  str = str.split(" ")
  str[0] = str[0].gsub('!', 't')
  first, i, first_part = str[0..4], 5, first_part = true
  puts first.join(" ")
  until i == str.size do
    if first_part == true
      str[i] = str[i].capitalize
      first_part = false
    elsif
      str[i] = str[i].downcase
      first_part = true
    end
  i +=1
  end
  str = str.join(" ").gsub(",", ".").gsub("!", '.').split(" ")
  puts str[5..6].join(" ") + "\n" + str[7..8].join(" ") + "\n" + str[9..10].join(" ")
end
