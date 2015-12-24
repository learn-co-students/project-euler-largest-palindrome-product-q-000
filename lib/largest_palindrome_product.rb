# Implement your procedural solution here!
def palindrome(number)
  number.to_s == number.to_s.reverse
end

def largest_palindrome_product
  products = [ ]
  numbers = (900..999)
  numbers.each { |x| numbers.each { |y| products.push (x * y) } }
  products.select { |z| palindrome(z) }.last
end
