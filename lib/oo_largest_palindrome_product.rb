# Implement your object-oriented solution here!
class LargestPalindromeProduct
def answer
  largestnum=0
for f in (100..999)
  for s in (100..999)
num=f*s
largestnum= num  if num.to_s == num.to_s.reverse && largestnum < num
  end
end
largestnum
end
end
