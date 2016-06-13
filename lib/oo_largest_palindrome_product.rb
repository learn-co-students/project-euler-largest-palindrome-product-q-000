# Implement your object-oriented solution here!
class LargestPalindromeProduct
  attr_accessor :answer, :palindrome_1, :palindrome_2
  def initialize
    @answer = palindrome_product
    @palindrome_1 = 0
    @palindrome_2 = 0
  end

  def is_palindrome?(input)
    input.to_s == input.to_s.reverse
  end

  def palindrome_product
    max = 0

    (100..999).each do |first|
      (100..999).each do |second|
        product = first * second
        if is_palindrome?(product) && product > max
          self.palindrome_1, self.palindrome_2 = first, second
          max = product
        end
      end
    end
    max
  end
end
