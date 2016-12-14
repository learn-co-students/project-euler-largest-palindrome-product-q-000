# Implement your procedural solution here!


def palindrome?(input)
	input.to_s == input.to_s.reverse
end

def largest_palindrome_product

	three_digit_integers = (100..999).to_a
	largest_product = 0

	three_digit_integers.each do |x|
		three_digit_integers.each do |y|
			product = x * y
			largest_product = product if palindrome?(product) && product > largest_product
		end
	end
	largest_product

end