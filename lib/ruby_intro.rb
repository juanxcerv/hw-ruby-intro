# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  #maps everything in array to integer then sums up values starting at 0
  arr.map(&:to_i).reduce(0, :+)   
end

def max_2_sum arr
  arr.map(&:to_i).max(2).reduce(0, :+)
end

def sum_to_n? arr, n
  # checks to see if any two numbers create a sum of n
  arr.combination(2).any? {|x, y| x + y == n }
end

# Part 2

def hello(name)
  'Hello, ' + name.to_s
end

def starts_with_consonant? s
  s = s.downcase
  s = s[0]
  /(?=[^aeiou])(?=[[:alpha:]])/.match(s)
end

def binary_multiple_of_4? s
  matches = /[^0-1]/.match(s)
  if matches or s == ''
    return false
  end
  s.length == 1 ? (s == '0') : (s[-1] == '0' and s[-2] == '0')
end

# Part 3

class BookInStock
  attr_reader :isbn, :price
  attr_writer :isbn, :price
  
  def initialize(isbn, price)
    if price <= 0 || isbn == ''
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end

  # def isbn
  #   @isbn
  # end

  # def price 
  #   @price
  # end

  # def isbn=(val)
  #   if val == ''
  #     raise ArgumentError
  #   end
  #   @isbn = val
  # end

  # def price=(cost)
  #   if cost <= 0
  #     raise ArgumentError
  #   end
  #   @price = cost
  # end

  def price_as_string
    return '$' + sprintf('%.2f', @price)
  end

end
