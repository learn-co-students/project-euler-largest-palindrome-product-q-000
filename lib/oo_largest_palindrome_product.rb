class LargestPalindromeProduct
  attr_accessor :answer

  def initialize
    @answer = largest_palindrome_product
  end

  def largest_palindrome_product
    max = 0
    (100..999).each do |first|
      (100..999).each do |second|
        product = first * second
        if is_palindrome?(product) && product > max
          max = product
        end
      end
    end
    max
  end

  def is_palindrome?(num)
    num.to_s === num.to_s.reverse
  end
end
