# Implement your procedural solution here!
def largest_palindrome_product
palindromes = []
100.upto(999) do |i|
  100.upto(999) do |j|
    p = i*j
    palindromes << p if p.to_s == p.to_s.reverse
  end
end
palindromes.max
end



