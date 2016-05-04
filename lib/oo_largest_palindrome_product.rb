# Implement your object-oriented solution here!
class LargestPalindromeProduct
  def palindrome(n)
    n.to_s == n.to_s.reverse
  end
  def answer
    max = 0
    100.upto(999) do |i|
      i.upto(999) do |j|
        n = i * j
        if palindrome(n) && n > max
          then
            max=n
        end
      end
    end
    return max
  end
end
