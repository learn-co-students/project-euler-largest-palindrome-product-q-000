# Implement your procedural solution here!

# 91 * 99
# => 9009

# 993 * 913
# => 906609

def is_prime?(largest_product)
	prime_num = (2..(largest_product-1)).none? {|n| largest_product % n == 0}
end


def is_pallindrome?(largest_product)
	if largest_product.to_s == largest_product.to_s.reverse
    return true
  else
    return false
  end
end



def largest_palindrome_product()
  num1 = 999
  num2 = 999
  large_product = num1 * num2
	item_length = num1.to_s.length

	while large_product > 1

		if is_pallindrome?(large_product) == false
			large_product -= 1

		else  # if the number is a pallendrome

			if is_prime?(large_product) == true
				large_product -= 1
			else # while it's a pallindrome make sure two divisors are both no larger than than initial digit length
				counter_num1 = num1
				while counter_num1 > 0
					if (large_product % counter_num1 == 0) &&
					   (counter_num1.to_s.length == item_length) &&
					   ((large_product / counter_num1).to_s.length == item_length)
						return large_product
					else
						counter_num1 -= 1
					end
				end
			large_product -= 1
			end
		end
	end
end
