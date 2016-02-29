# Implement your object-oriented solution here!
class LargestPalindromeProduct

  def initialize
    @num1 = 1
    @num2 = 1
    @largest = 0
  end

  def isPalindrome?(num)
    num.to_s == num.to_s.reverse
  end

  def answer
    (1..999).each do |num|
      (1..999).each do |inner|
        if isPalindrome?(num*inner)
          if (num*inner > @largest)
            @largest = num*inner
          end
        end
      end
    end
    return @largest
  end

end

