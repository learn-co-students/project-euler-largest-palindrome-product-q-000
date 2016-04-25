# Implement your object-oriented solution here!
class LargestPalindromeProduct

def palindrome?(answer)
  answer.to_s == answer.to_s.reverse
  end

def answer
highest = []
100.upto(999).each do |x|
x.upto(999).each do |y|
	product = x * y
	 highest.push(product)
end
end

highest.select { |answer| palindrome?(answer)}.max
end
end
