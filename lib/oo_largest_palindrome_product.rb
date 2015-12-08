# Implement your object-oriented solution here!
# LargestPalindromeProduct.new.answer


class LargestPalindromeProduct

    def answer
        largest_multiples.detect do |x|
            if palindrome?(x)
                return x
            end
        end
    end


    def palindrome?(num)
        num_string = num.to_s
        (1..num_string.length/2).to_a.select do |x|
            if num_string[x-1] != num_string[-x]
                return false
            end
        end
        return true
    end

    def largest_multiples
        list = []
        (100..999).to_a.each do |x|
            (100..999).to_a.each do |y|
                list << x*y
            end
        end
        return list.sort.reverse
    end

end

