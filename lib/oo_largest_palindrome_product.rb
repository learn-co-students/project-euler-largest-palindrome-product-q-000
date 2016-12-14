# Implement your object-oriented solution here!

class LargestPalindromeProduct

	def palindrome?(input)
		input.to_s == input.to_s.reverse
	end

	def answer
		@answer ||= generate_answer
	end

	def generate_answer
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

end