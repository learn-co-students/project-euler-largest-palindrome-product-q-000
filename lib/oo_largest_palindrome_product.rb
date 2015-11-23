class LargestPalindromeProduct

  def is_palindrome? (product)
    product.to_s == product.to_s.reverse
  end


  def answer
    largest = 0
    999.downto(100).each do |i|
       999.downto(100).each do |x|
        product = i * x
        if is_palindrome?(product) && product > largest
          largest = product
        end
      end
    end
    largest
  end
end
