def is_palindrome(limit)
  newLimit = limit.to_s
  rev = newLimit.reverse
  newLimit == rev
end

def largest_palindrome_product
  tempPalindrome = 0
  ss = 999
  ee = 999

  while ss > 99
    while ee > 99
      tempProduct = ss * ee
      if is_palindrome(tempProduct)
        if tempProduct > tempPalindrome
          tempPalindrome = tempProduct
          puts "#{ss} #{ee}"
        end
      end
      ee -= 1
    end
    ss -= 1
    ee = 999
  end
  tempPalindrome
end
