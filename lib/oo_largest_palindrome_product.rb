# Implement your object-oriented solution here!
class LargestPalindromeProduct
  def answer
    palindromes = Array.new
    for num1 in 100..999
      for num2 in 100..999
        product = num1 * num2
        if (palindrome?(product))
          palindromes << product
        end
      end
    end

    return palindromes.max
  end

  def palindrome?(num)
    return num.to_s == num.to_s.reverse
  end
end