# https://leetcode.com/problems/house-robber/
# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
  return 0 if nums.length == 0 
  
  robs = {}
  robs[0] = nums[0]
  return robs[0] if nums.length == 1
  
  robs[1] = [nums[0], nums[1]].max
  
  (2...nums.length).each do |num|
    robs[num] = [nums[num] + robs[num-2], robs[num-1]].max
  end
  
  robs[nums.length-1]
end
