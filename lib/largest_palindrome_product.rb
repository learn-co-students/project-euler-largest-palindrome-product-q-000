# Implement your procedural solution here!


=begin

# just my trail & fail error of figuring it out.

def largest_palindrome_product
  max = 0

     999.downto(100) do |a|
       a.downto(100) do |b|
         answer = a * b

     if answer.to_s == answer.to_s.reverse && answer < max then max = answer end

      puts answer
end
end
end

array = []

def palindrome?(number)
  number.to_s == number.to_s.reverse
end

=end

def largest_palindrome_product(min = 100, max = 999 )
 palindrome = []
  (min...max).each do |a|
    (min...max).each do |b|
      product = a * b
   palindrome << product if product.to_s == product.to_s.reverse
 end
     end
   palindrome.max
   end
