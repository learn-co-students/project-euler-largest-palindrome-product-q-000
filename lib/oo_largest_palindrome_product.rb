# Implement your object-oriented solution here!
class LargestPalindromeProduct
  def answer
    palindromes = []
    100.upto(999) do |i|
      100.upto(999) do |j|
        p = i*j
        palindromes << p if p.to_s == p.to_s.reverse
      end
    end
    palindromes.max
  end
end
