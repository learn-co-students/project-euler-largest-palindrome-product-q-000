def largest_palindrome_product()
  number_1 = 999
  number_2 = 999
  while (number_1>=900) do
    largest_palindrome_product = number_1 * number_2
    if (is_palindrome?(largest_palindrome_product)==true)
      return largest_palindrome_product
    end

    number_2 -= 1
    if (number_2==(number_1-99))
      number_1 -= 1
      number_2 = number_1
    end
  end
end

def is_palindrome?(product)
  answer_array = product.to_s.split(//)
  palindrome_length = answer_array.size/2.to_i
  counter = 0
  while (counter < palindrome_length) do
    counterpart = answer_array.size-counter-1
    if (answer_array[counter] != (answer_array[counterpart]))
      return false
    end
    counter += 1
  end
  return true
end