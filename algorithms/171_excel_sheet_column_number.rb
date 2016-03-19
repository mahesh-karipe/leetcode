# https://leetcode.com/problems/excel-sheet-column-number/
# @param {String} s
# @return {Integer}
def title_to_number(s)
  number = 0
  s.downcase.chars.reverse.each_with_index do |char, index|
    number += (char.to_i(36) - 9) * (26 ** index)
  end
    
  number
end
