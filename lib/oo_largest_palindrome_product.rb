# Implement your object-oriented solution here!
class LargestPalindromeProduct
  def answer
    index_1 = 999
    largest_palindrome = 0
    until index_1 == 100
      index_2 = 999
      until index_2 == 100
        if is_palindrome?(index_1 * index_2) && index_1 * index_2 > largest_palindrome
         largest_palindrome = index_1 * index_2
        end
        index_2 -= 1
      end
      index_1 -= 1
    end
  largest_palindrome
  end

  def is_palindrome?(number)
    number.to_s.reverse == number.to_s
  end
end