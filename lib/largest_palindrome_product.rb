# Implement your procedural solution here!
def largest_palindrome_product
  first_set = Array(100..999)
  second_set = Array(100..999)
  first_set.each |x|
    second_set.each |y|
      product = (x * y).to_s
      if product.reverse == product
        return product
      end
    end
  end
end



#
# def return_largest_pal_product(num1, num2)
#   find_pal_products(num1, num2).max
# end
