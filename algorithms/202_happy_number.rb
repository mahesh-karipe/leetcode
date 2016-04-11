# https://leetcode.com/problems/happy-number/
# @param {Integer} n
# @return {Boolean}
def is_happy(n)
  sums_of_squares = []
  
  while n != 1
    n = get_digits(n).map{|digit| digit * digit }.inject(&:+)
    return false if sums_of_squares.include?(n)
    sums_of_squares << n
  end
  
  return true
end

def get_digits(num)
  digits = []
  while num > 0
    digits.unshift(num % 10)
    num /= 10
  end
  digits
end
