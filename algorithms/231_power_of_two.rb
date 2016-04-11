# https://leetcode.com/problems/power-of-two/
# @param {Integer} n
# @return {Boolean}
def is_power_of_two(n)
  return false if n == 0
  
  while n % 2 == 0 
    n /= 2
  end
  
  n == 1
end
