# Implement your procedural solution here!

	def palindrome?(answer)
    answer.to_s == answer.to_s.reverse
  end

def largest_palindrome_product(min = 100, max = 999)

palindrome = 0


(min...max).each do |x|
	(min...max).each do |y|
		answer = x * y
		if answer > palindrome && palindrome?(answer)
			palindrome = answer
		break
end
end
end

return palindrome
end

