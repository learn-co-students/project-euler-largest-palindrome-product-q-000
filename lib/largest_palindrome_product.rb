# Implement your procedural solution here!
def palindrome?(num)
  num.to_s.chars == num.to_s.chars.reverse
end

def largest_palindrome_product
  palindromes = []
  range = (100..999).to_a.reverse
  range.each do |a|
    range.each do |b|
      if palindrome?(a*b)
        palindromes << (a*b)
      end
    end
  end
  return palindromes.max
end

