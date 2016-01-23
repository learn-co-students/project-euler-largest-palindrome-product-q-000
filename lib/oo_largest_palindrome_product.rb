# Implement your object-oriented solution here!
class LargestPalindromeProduct
  def answer
    998001.downto (10000) do |number|
      if number == number.to_s.reverse.to_i
        999.downto(100) do |factor|
          return number if number%factor == 0 && (number/factor).between?(100,999)
        end
      end
    end
  end
end