# Implement your object-oriented solution here!
class LargestPalindromeProduct
  def answer
    largest = 0
    (100..999).each do |x|
      (100..999).each do |y|
        string = (x*y).to_s
        if string == string.reverse && x*y > largest
          largest = x*y
        end
      end
    end
    return largest
  end
end