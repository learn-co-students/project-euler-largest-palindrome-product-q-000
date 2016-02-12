# Implement your procedural solution here!

# A palindromic number reads the same both ways.
# For instance, 101 is a palindrome, as is 91,519 and 1,111.
# The largest palindrome made from the product of two two-digit numbers is 9009: 91 * 99 => 9009

def largest_palindrome_product
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

largest_palindrome_product
