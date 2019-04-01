# Implement your object-oriented solution here!
class LargestPalindromeProduct

  def initialize
  end

  def answer
    first_set = Array(100..999)
    second_set = Array(100..999)
    all_palindromes = []
    first_set.each do |x|
      second_set.each do |y|
        product = (x * y).to_s
        if product.reverse == product
          all_palindromes << product.to_i
        end
      end
    end
    all_palindromes.max
  end

end
