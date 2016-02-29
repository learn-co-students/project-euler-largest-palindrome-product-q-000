# Implement your procedural solution here!
def largest_palindrome_product
  num1 = 1
  num2 = 1
  largest = 0
  
  def isPalindrome?(num)
    num.to_s == num.to_s.reverse
  end

  (1..999).each do |num|
    (1..999).each do |inner|
      if isPalindrome?(num*inner)
        if (num*inner > largest)
          largest = num*inner
        end
      end
    end
  end

  return largest
end