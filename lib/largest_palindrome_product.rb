# Implement your procedural solution here!

def largest_palindrome_product
  y = 0
  (100..999).to_a.each do |num|
    (100..999).to_a.each do |n|

      ans = num * n
      if ans.to_s == ans.to_s.reverse && ans > y
        y = ans
      end
    end
  end
  # binding.pry
  #   n = 999 * num
  #   if n.to_s == n.to_s.reverse
  #     y = num
  #   end
  # end
  y
end
