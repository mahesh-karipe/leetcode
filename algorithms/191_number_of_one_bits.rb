# https://leetcode.com/problems/number-of-1-bits/
# @param {Integer} n, a positive integer
# @return {Integer}
def hamming_weight(n)
  no_of_one_bits = 0
  while true
    no_of_one_bits += 1 if n%2 == 1
    break if (n = n/2) == 0
  end
  
  no_of_one_bits
end
