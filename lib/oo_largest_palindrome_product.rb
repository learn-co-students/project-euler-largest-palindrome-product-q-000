# Implement your object-oriented solution here!
class LargestPalindromeProduct
  def initialize
    
  end
  
  def answer    
    largest = 0
    test = 0
    x = 100
    y = 100

    while y < 1000

      while x < 1000
        test = x * y
        if test.to_s == test.to_s.reverse
          if test > largest
            largest = test
          end
        end
        x += 1
      end
      x = 100
      y += 1
    end

    return largest    
  end
end