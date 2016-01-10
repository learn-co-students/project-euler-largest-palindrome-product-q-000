require 'pry'

class LargestPalindromeProduct
  def product_getter()
    @product
  end

  def product_setter(number1,number2)
    @product = number1*number2
  end

  def answer()
    number_1 = 999
    number_2 = 999
    while (number_1>=900) do
      product_setter(number_1,number_2)
      if (is_palindrome?()==true)
        return product_getter()
      end

      number_2 -= 1
      if (number_2==(number_1-99))
        number_1 -= 1
        number_2 = number_1
      end
    end
  end

  def is_palindrome?()
    answer_array = product_getter().to_s.split(//)
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
end