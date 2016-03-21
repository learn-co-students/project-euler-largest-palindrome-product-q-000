def largest_palindrome_product
  first_operand = 999
  second_operand = 999
  largest_palindrome = 0

  until first_operand == 100 && second_operand < 100
    product = first_operand * second_operand

    largest_palindrome = product if palindrome?(product) && 
                                    product > largest_palindrome

    if second_operand > 99
      second_operand -= 1
    else
      second_operand = 999
      first_operand -= 1
    end
  end

  largest_palindrome
end

def palindrome?(product)
  string_product = product.to_s

  return string_product if string_product == string_product.reverse
  false
end