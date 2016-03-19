# https://leetcode.com/problems/add-digits/
# @param {Integer} num
# @return {Integer}
def add_digits(num)
  if num == 0
    num
  elsif num % 9 == 0 
    9
  else
    num % 9
  end
end
