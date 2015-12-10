class LargestPalindromeProduct
def is_palindrome(number)
  a = number.to_s
  b = a.reverse
  
    if a.to_i == b.to_i
      return true
    end
end
def answer
  max = 0  
  (100..999).each do |x|
    (100..999).each do |y|
      number = x * y
      if is_palindrome(number) && number > max
         max = number
      end   
    end
  end
  return max
end

  
end