# https://leetcode.com/problems/roman-to-integer/
# @param {String} s
# @return {Integer}
def roman_to_int(s)
  roman_to_int_map = { 'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000 }
 
  value, prev_char, current_char = 0, s[0], nil
  (1...s.length).each do |index|
    current_char = s[index]
    if roman_to_int_map[prev_char] < roman_to_int_map[current_char]
      value -= roman_to_int_map[prev_char]
    else
       value += roman_to_int_map[prev_char]
    end
    prev_char = current_char
  end
  
  value += roman_to_int_map[prev_char]
end
