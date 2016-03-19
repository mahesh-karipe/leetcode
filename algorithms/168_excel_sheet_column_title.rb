# https://leetcode.com/problems/excel-sheet-column-title/
# @param {Integer} n
# @return {String}
def convert_to_title(n)
  title = ''
  while n > 0
    to_char = (n % 26) == 0 ? 'Z' : ((n % 26) + 9).to_s(36)
    title = "#{to_char}#{title}"

    n = (n-1) / 26    
  end
  
  title.upcase
end
