# Implement your object-oriented solution here!
class LargestPalindromeProduct

def palindrome?(num)
  num == num.to_s.reverse.to_i
end

def answer
  max = 999
  min = 100
  palindrome = 0

  while max > min
    (500..999).each do |num|
      if num == 500 && max == 500
        max = 100
      elsif num == 500
         max -= 1
      elsif palindrome?(num * max) && (num * max) > palindrome
        palindrome = num * max 
      end
    end
  end
palindrome
end
end