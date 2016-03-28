# Implement your procedural solution here!
def largest_palindrome_product

  palindrome = []

  array = 111.upto(999)
  counter = 1

  array.each do |x|
    array.each do |y|
      n = x * y
      counter += 1
      if n == n.to_s.reverse.to_i
        palindrome << n
        #p "match! test #{counter} | #{n} == #{n.to_s.reverse.to_i} "
      end
    end
  end
  p palindrome.max
  palindrome.max
end
