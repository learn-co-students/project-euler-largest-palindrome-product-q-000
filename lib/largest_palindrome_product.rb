# Implement your procedural solution here!
def find_products
  products = Array.new
  for i0 in 100..999 do
    for i1 in 100..999 do
      products << i0 * i1
    end
  end
  return products
end

def int_to_array(int)
  int.to_s.split('')
end

def largest_palindrome_product
  palindromes = find_products.select do |product|
    string = int_to_array(product)
    if string[0] == string[5] && string[1] == string[4] && string[2] == string[3]
       string.join.to_i
    end
  end
  return palindromes.sort[-1]
end