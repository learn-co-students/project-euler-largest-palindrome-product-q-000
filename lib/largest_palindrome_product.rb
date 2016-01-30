# Implement your procedural solution here!
def largest_palindrome_product
  
  palindromes = []
  i = 999
  while i >= 100
    j = 999
    while j>= 100
    
      num_string = (i * j).to_s
      if num_string == num_string.reverse
        palindromes << num_string.to_i
      end

      j -=1
    end 

    i += -1
  end

  palindromes.max
end