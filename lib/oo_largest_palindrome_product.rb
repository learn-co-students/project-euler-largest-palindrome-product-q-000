# Implement your object-oriented solution here!
class LargestPalindromeProduct

  def palindrome?(number)
    number.to_s == number.to_s.reverse
  end

  def answer
    start = 100
    limit = 999
    palindromes = []

    (start..limit).each do |var_1|
      (start..limit).each do |var_2|
        var_product = var_1 * var_2
        (palindromes << var_product) if self.palindrome?(var_product)
      end
    end
    palindromes.max
  end

end
