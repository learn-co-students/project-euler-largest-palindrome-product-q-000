# Implement your object-oriented solution here!
class LargestPalindromeProduct
  def initialize
    @range = (100..999).to_a
    @palindromes = []
  end

  def palindrome?(num)
    num.to_s.chars == num.to_s.chars.reverse
  end

  def answer
    @range.each do |a|
      @range.each do |b|
        if palindrome?(a*b)
          @palindromes << (a*b)
        end
      end
    end
    return @palindromes.max
  end
end