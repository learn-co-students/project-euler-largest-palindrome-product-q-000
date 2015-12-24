# Implement your object-oriented solution here!
class LargestPalindromeProduct
  def initialize
    @answer = largest_palindrome
  end

  def palindrome(number)
    number.to_s == number.to_s.reverse
  end

  def largest_palindrome
    products = [ ]
    numbers = (900..999)
    numbers.each { |x| numbers.each { |y| products.push (x * y) } }
    products.select { |z| palindrome(z) }.last
  end

  def answer
    @answer
  end
end
