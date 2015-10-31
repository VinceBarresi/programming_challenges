=begin
  Check if the parentheses in a string are valid,
  or invalid.
=end

# O(n)
def valid_parenths str
  str, lft_par, rgt_par, i = str.split(''), 0, 0, 0
  while i <= str.size - 1
    if str[i] == '('
      lft_par += 1
    elsif str[i] == ')'
      rgt_par += 1
    end
    i += 1
  end
  lft_par == rgt_par ? 'valid string' : 'invalid string'
end
