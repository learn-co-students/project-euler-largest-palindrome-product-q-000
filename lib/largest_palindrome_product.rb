# Implement your procedural solution here!


def is_palindrome?(number)
  i = 0 
  number = number.to_s.split("")
  while i < number.length
    return false if number[i] != number[(-1)-i]
    i += 1 
  end
  true 
end


def largest_palindrome_product
arr = [] 
  999.downto(100).each do |num|
      999.downto(100).each do |num2|
        test_num = num * num2 
        arr << test_num if is_palindrome?(test_num)
      end
    end
    arr.sort.last
end