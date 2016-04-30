# Implement your procedural solution here!
def largest_palindrome_product
	l_palindrome = 0
	(100..999).each do |n1|
		(n1+1..1000).each do |n2|
			product = n1 * n2
			if product.to_s == product.to_s.reverse && product > l_palindrome
				l_palindrome = product
			end
		end
	end
	l_palindrome
end
