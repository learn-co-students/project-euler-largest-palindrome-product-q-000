# Implement your object-oriented solution here!
class LargestPalindromeProduct

  def is_palindrome?(input)
    input.to_s == input.to_s.reverse
  end

  def result
    palindromes = []
    (100..999).each do |x|
      (100..999).each do |y|
        product = x * y
        (palindromes << product) if self.palindrome?(product)
      end
    end
    palindromes.max
  end

end
