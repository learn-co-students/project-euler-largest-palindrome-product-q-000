# Implement your object-oriented solution here!
class LargestPalindromeProduct
  def answer
    x1=999
    pals =[]
    while x1>900
      x2=999
      while x2>900
        if pal_test(x1*x2)
          pals.push(x1*x2)
        end
        x2-=1
      end
      x1-=1
    end
    return pals.max
  end
  def pal_test(number)
    num_string = number.to_s
    len = num_string.length
    ptest = FALSE
    counter = 0
    if len%2==1
      len -=1
      num_string[len/2]=''
      puts len
    end
    while counter<=(len/2-1)
      if num_string[counter]==num_string[len-1-counter]
        ptest=TRUE
        counter +=1
      else
        ptest = FALSE
        break
      end
    end
    return ptest
  end
end
