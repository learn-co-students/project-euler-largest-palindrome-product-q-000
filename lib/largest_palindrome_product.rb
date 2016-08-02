# Implement your procedural solution here!
def largest_palindrome_product

  palindrome_arr = []
  palindrome_arr = fill_products.select do |palindromes|
      is_palindrome(palindromes) == true
  end
  palindrome_arr.sort!
  palindrome_arr.pop


end

def fill_products

  mult_arr_1 = []
  mult_arr_2 = []
  fill_array(mult_arr_1)
  fill_array(mult_arr_2)
  palindr_arr = []
  palindrome_num = 0

  mult_arr_1.each do |int_1|

    mult_arr_2.each do |int_2|
      palindr_arr.push(int_1 * int_2)

    end

  end

  palindr_arr

end

def fill_array(array)
  i = 999
  until i == 99
    array.push(i)
    i-=1
  end
  array
end

def is_palindrome(num_to_chk)
  compare = num_to_chk.to_s.reverse.to_i
  compare == num_to_chk ? true : false
end
