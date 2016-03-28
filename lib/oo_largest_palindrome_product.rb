# Implement your object-oriented solution here!
class LargestPalindromeProduct
  def initialize
    @palindrome = Array.new
    counter = 1
    array = 111.upto(999)

    array.each do |x|
      array.each do |y|
        n = x * y
        counter += 1
        if n == n.to_s.reverse.to_i
          @palindrome << n
          #p "match! test #{counter} | #{n} == #{n.to_s.reverse.to_i} "
        end
      end
    end
  end 

  def answer
    p "Largest palindrome product for two 3-digit numbers is #{@palindrome.max}"
    return @palindrome.max
  end
end

