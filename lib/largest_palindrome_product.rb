
def is_palindrome?(input)
  input.to_s == input.to_s.reverse
end  

def largest_palindrome_product
  max = []

  (100..999).each do |first|
    (100..999).each do |second|
      product = first * second
      if is_palindrome?(product)
        max << product
      end
    end 
  end
  max.sort.last    
end
