# Implement your object-oriented solution here!

class LargestPalindromeProduct
  def palindrome?(number)
    number.to_s == number.to_s.reverse
  end

  def answer(min = 100, max = 999)
    palindrome = []
     (min...max).each do |a|
       (min...max).each do |b|
         product = a * b
      palindrome << product if palindrome?(product)
    end
        end
      palindrome.max
      end 
  end
