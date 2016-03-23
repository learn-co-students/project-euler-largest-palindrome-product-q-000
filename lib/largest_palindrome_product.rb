# Implement your procedural solution here!

def palindrome_check(number)
  if number.to_s == number.to_s.reverse
    return true
  else
    return false
  end
end

def largest_palindrome_product
  array = []
  (1...999).each do |x|
    (1...999). each do |y|
      number = x * y
      array << number
    end
  end
  array.select {|i| palindrome_check(i)}.max
end