# Implement your procedural solution here!
def largest_palindrome_product
  def palindrome?(n)
    n.to_s == n.to_s.reverse
  end
  max = 0
  100.upto(999) do |i|
    i.upto(999) do |j|
      num = i * j
      if palindrome?(num) && num > max
        then
          max=num
        end
    end
  end
  return max
end
