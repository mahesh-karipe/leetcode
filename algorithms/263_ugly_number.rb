# https://leetcode.com/problems/ugly-number/
# @param {Integer} num
# @return {Boolean}
def is_ugly(num)
  return false if num < 1
  primes = [2,3,5]
  prime = primes.pop
  
  while prime && num != 1
    if num % prime !=0 
      prime = primes.pop
    else
      num /= prime
    end
  end
  
  num == 1
end
