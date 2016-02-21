# Implement your procedural solution here!
def largest_palindrome_product
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
