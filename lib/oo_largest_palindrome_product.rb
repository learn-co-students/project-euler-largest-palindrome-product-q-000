# Implement your object-oriented solution here!
class LargestPalindromeProduct
  
  attr_accessor :array
  
  def initialize
    @array = []
  end
  
  def palindrome_check(number)
    if number.to_s == number.to_s.reverse
      return true
    else
      return false
    end
  end

  def largest_palindrome_product
    (1...999).each do |x|
      (1...999). each do |y|
        number = x * y
        @array << number
      end
    end
  end
    
  def answer
    largest_palindrome_product
    @array.select {|i| palindrome_check(i)}.max
  end

end