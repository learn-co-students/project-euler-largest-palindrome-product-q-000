# Implement your object-oriented solution here!
class LargestPalindromeProduct
  def answer
    max = 0
    999.downto(100) do |i|
      i.downto(100) do |j|
        result = i * j
        max = result if result > max && result.to_s == result.to_s.reverse
        break if result <= max
      end
    end
    max
  end
end
