require 'pry'
# Implement your procedural solution here!
def palindrome?(input)
  input = input.to_s
  l = input.length
  return true if input[0...l/2] == input[l/2 + l%2...l].reverse
  return false
end

def palifactors?(palindrome)
	number = (palindrome**(1.0/2)).to_i
	increment = 1

	if palindrome % 2 > 0
		number -= 1 if number % 2 == 0
		increment = 2
	end

	while palindrome / number >= 100 && number < 1000
		return true if palindrome % number == 0
		number += increment
	end
	return false
end

def largest_palindrome_product
  high = 999**2
  low = 100**2

  high.step(low, -1) do |product|
	  if palindrome?(product)
      return product if palifactors?(product)
    end
  end
  return nil
end


