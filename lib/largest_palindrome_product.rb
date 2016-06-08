# Implement your procedural solution here!
def isPalindrome(n)
  s = n.to_s
  r = s.length - 1
  l = 0

  while r - l >= 0
    if s[r] != s[l]
      return false
    end

    r -= 1
    l += 1
  end

  return true
end

def largest_palindrome_product
  n = 999*999
    
  if (n < 100*100)
    return -1
  end  

  while n >= 100*100
    if isPalindrome(n)
      a = Math.sqrt(n).floor

      while a > 99
        if n % a == 0
          b = n / a
          
          if b > 99 && b < 1000
            return n
          end
        end
        
        if (n / a > 999)
          break
        end
  
        a -= 1
      end
    end
    
    n -= 1
  end
  
  return -1
end
