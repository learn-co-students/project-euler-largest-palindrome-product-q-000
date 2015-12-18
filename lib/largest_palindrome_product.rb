# Implement your procedural solution here!

def palindrome?(string)
  median = string.length/2

  i = 0
  until i == median
    if string[i] != string[string.length - i - 1]
      return false
    end
    i += 1
  end

  return true
end

def largest_palindrome_product()
  products = []

  for x in 100..999
    for y in 100..999
      products.push(x * y)
    end
  end
  products = merge_sort(products)

  n = products.length - 1
  palindrome = nil

  until n == 0
    if palindrome?(products[n].to_s) == true
      palindrome =  products[n]
      break
    end
    n -= 1
  end
  return palindrome
end

def merge(left_arr, right_arr)
  n = left_arr.length + right_arr.length
  merged_arr = []

  # Checks the first values in left_arr and right_arr for the smaller value then shifts that value into merged_arr
  until left_arr.empty? || right_arr.empty?
    left_arr[0] <= right_arr[0] ? (merged_arr << left_arr.shift) :  (merged_arr << right_arr.shift)
  end

  return merged_arr.concat(left_arr).concat(right_arr)
end

def merge_sort(arr)
  return arr if arr.length <= 1


  median = arr.length/2
  left_arr  = merge_sort(arr[0..median-1])
  right_arr = merge_sort(arr[median..arr.length])

  return merge(left_arr, right_arr)
end
