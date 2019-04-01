# Implement your procedural solution here!
def largest_palindrome_product
  first_set = Array(100..999)
  second_set = Array(100..999)
  all_palindromes = []
  first_set.each do |x|
    second_set.each do |y|
      product = (x * y).to_s
      if product.reverse == product
        all_palindromes << product.to_i
      end
    end
  end
  all_palindromes.max
end



#
# def return_largest_pal_product(num1, num2)
#   find_pal_products(num1, num2).max
# end
