class LargestPalindromeProduct
   def answer
      pal_max = 0
   
      (100..999).to_a.reverse.each do |n|
         (100..999).to_a.reverse.each do |nTwo|
            sixDigit = (n * nTwo).to_s
            if sixDigit == sixDigit.reverse && sixDigit.to_i > pal_max
               pal_max = sixDigit.to_i
            end
         end
      end
   
      pal_max
   end
end