# Implement your object-oriented solution here!
class LargestPalindromeProduct 
  def largest_palindrome_product
    special = []
    range = (100..999)
    for a in range.to_a do
      for b in (100..a).to_a do
        c = (a * b)
        if c.to_s == c.to_s.reverse
          palindrome = c
          special << palindrome
        end
      end
    end
    special.max
  end

  def answer 
    largest_palindrome_product
  end
end