def largest_palindrome_product
  x = y = 999

  while x > 900 do
    while y > x - 100
      a = (x * y).to_s
      break if a == a.reverse
      y -= 1
    end
    break if a == a.reverse
    y += 99
    x -= 1
  end
  x * y
end
