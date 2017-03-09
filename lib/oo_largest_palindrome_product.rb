# Implement your object-oriented solution here!
class LargestPalindromeProduct
  def initialize

  end

  def reverse_int( n )
      n.to_s.reverse.to_i
  end
  
  def answer()
  a = Array.new
  for i in 900..999
  for k in 900..999
  p=i*k
  if p == reverse_int(p)
    puts p
    a.push(p)
  end
  end
  end
  return a.max
  end


end