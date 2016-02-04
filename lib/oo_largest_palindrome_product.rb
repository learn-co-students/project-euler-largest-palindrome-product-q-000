# Implement your object-oriented solution here!
class LargestPalindromeProduct
  def answer
    return largest_palindrome_product
  end

  def is_palindrome?(candidate)
    candidate_forward = candidate
    candidate = candidate.to_s
    candidate = candidate.split("")
    candidate = candidate.reverse
    candidate = candidate.join("")
    candidate_backward = candidate.to_i
    if (candidate_forward == candidate_backward)
      return true
    end
    return false
  end

  def largest_palindrome_product
    palindromes = Array.new()
    palindromes[0] = 10201
    inner = (100..999).to_a.reverse
    outer = inner
    for i in inner
      for j in outer
        if (i*j > palindromes.max)
          if (is_palindrome?(i*j))
            palindromes.push(i*j)
          end
        end
      end
    end
    palindromes = palindromes.sort
    palindromes = palindromes.reverse
    puts palindromes

    return palindromes.max
  end
end
