# https://leetcode.com/problems/contains-duplicate/
# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  nums.sort!
  
  (0...nums.length-1).each do |index|
    return true if nums[index] == nums[index+1]
  end
  
  return false
end
