# Implement your procedural solution here!
def largest_palindrome_product
  largest = 0
  test = 0
  x = 100
  y = 100

  while y < 1000

    while x < 1000
      test = x * y
      if test.to_s == test.to_s.reverse
        if test > largest
          largest = test
        end
      end
      x += 1
    end
    x = 100
    y += 1
  end

  return largest
end