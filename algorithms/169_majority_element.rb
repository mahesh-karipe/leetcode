# https://leetcode.com/problems/majority-element/
# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  nums.sort!
  
  majority_element_count, current_element_count, majority_element, current_element = 0, 0, nil, nil
  (0...nums.length).each do |index|
    if nums[index] == current_element
      current_element_count += 1
    else
      current_element = nums[index]
      current_element_count = 1
    end
    
    if current_element_count >= majority_element_count
      majority_element_count = current_element_count
      majority_element = current_element
    end
  end
    
  majority_element
end
