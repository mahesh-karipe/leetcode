# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  climb_stairs = {1 => 1, 2 => 2}
  return climb_stairs[n] if climb_stairs[n]

  (3..n).each do |num|
    climb_stairs[num] = climb_stairs[num-1] + climb_stairs[num-2]
  end
  climb_stairs[n]
end
