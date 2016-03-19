https://leetcode.com/problems/move-zeroes/
# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
#
def move_zeroes(nums)
  next_zeroth_index = nums.length - 1
  (nums.length-1).downto(0).each do |index|
    swap_index = index
    if nums[index] == 0
      while swap_index != next_zeroth_index
        nums[swap_index], nums[swap_index + 1] = nums[swap_index + 1], nums[swap_index]
        swap_index += 1
      end
      next_zeroth_index -= 1
    end
  end
  
  nums
end
