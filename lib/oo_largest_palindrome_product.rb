# Implement your object-oriented solution here!
class LargestPalindromeProduct
 

  def answer
    x = 999
    set = (100..999).to_a
    largest_palindrome_product = 0

    while x >= 100
      set.each do |i|
        product = x * i
        product_array = product.to_s.chars.map(&:to_i)
        if product_array == product_array.reverse && x * i > largest_palindrome_product
          largest_palindrome_product = product
        end
      end
      x -= 1
    end
    return largest_palindrome_product
  end
end