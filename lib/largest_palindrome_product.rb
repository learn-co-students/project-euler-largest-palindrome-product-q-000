# Implement your procedural solution here!
def is_palindrome?(input)
  input.to_s == input.to_s.reverse
end

def largest_palindrome_product
  palindromes = []

  (100..999).each do |x|
    (100..999).each do |y|
      product = x * y
      (palindromes << product) if is_palindrome?(product)
    end
  end
  palindromes.max
end
