# Find the largest palindrome made from the product of two three-digit numbers.
# Implement your object-oriented solution here!

class LargestPalindromeProduct
  def answer
  # Smallest three digit number is 100. largest three digit number is 999.
  from = 100
  to = 999

  # Find the largest palindrome made from the product of numbers
  largest = (from..to).map do |i|
    (i..to).map do |j|
      i * j
      end.select{|n| n.to_s == n.to_s.reverse}
    end.flatten.max
  end
end
