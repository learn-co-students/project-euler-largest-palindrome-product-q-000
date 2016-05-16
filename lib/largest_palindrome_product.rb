# Implement your procedural solution here!
def is_palindrome?(bil)
  bil.to_s == bil.to_s.reverse
end

def largest_palindrome_product
  maks = 0
  (100..999).each do |a1|
    (100..999).each do |a2|
      kali = a1 * a2
      if is_palindrome?(kali) && kali > maks
        maks = kali
      end
    end
  end
  maks
end
