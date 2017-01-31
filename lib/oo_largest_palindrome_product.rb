# Implement your object-oriented solution here!
class LargestPalindromeProduct
  attr_reader :answer

  def initialize
    @answer = largest_palindrome_product
  end

  def is_palindrome?(input)
    input.to_s == input.to_s.reverse
  end

  def largest_palindrome_product
    max = 0
    (100..999).each do |first|
      (100..999).each do |second|
        answer = first * second
        if is_palindrome?(answer) && answer > max
          max = answer
        end
      end
    end
   max
  end
end
