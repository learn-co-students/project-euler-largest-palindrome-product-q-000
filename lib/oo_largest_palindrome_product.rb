# Implement your object-oriented solution here!
class LargestPalindromeProduct
  def initialize
    @answer = palindrome_product
    @palindrome1 = 0
    @palindrome2 = 0
  end

  def is_palindrome?(bil)
    bil.to_s == bil.to_s.reverse
  end

  def palindrome_product
    maks = 0
    (100..999).each do |a1|
      (100..999).each do |a2|
        kali = a1 * a2
        if is_palindrome?(kali) && kali > maks
          maks = kali
        end
      end
    end
    maks
  end

  def answer
    @answer
  end
end
