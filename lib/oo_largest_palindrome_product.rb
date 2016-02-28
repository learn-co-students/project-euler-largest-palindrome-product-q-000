# Implement your object-oriented solution here!


class LargestPalindromeProduct


 

  def palindrome?(number)
    i = 0 
    number = number.to_s.split("")
    while i < number.length
      return false if number[i] != number[(-1)-i]
      i += 1
    end
    true
  end

  def answer
    arr = []
    999.downto(100) do |num|
      999.downto(100) do |num2|
        option = num * num2
        arr << option if palindrome?(option)
      end
    end
    arr.sort.last
  end



end 