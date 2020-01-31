# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return arr.sum
end

def max_2_sum arr
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    arr = arr.sort{ |a,b| b <=> a}
    return arr[0]+arr[1]
  end
end

def sum_to_n? arr, n
  dic = Hash.new(0)
  if arr.length < 2
    return false
  end
  for i in 0..(arr.length-1)
    if dic.has_key?(n-arr[i])
      return true
    else
      dic[arr[i]]=1
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  if (s =~ /^[a-zA-Z]/) and (s =~ /^[^aeiouAEIOU]/)
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  if (s =~ /\D/) or (s == "")
    return false
  end
  s = s.to_i(10)
  if (s % 4) == 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  attr_accessor:isbn,:price
  
  def initialize(isbn,price) 
    raise ArgumentError if isbn == "" or price <=0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    "$%0.2f" %@price
  end
end
