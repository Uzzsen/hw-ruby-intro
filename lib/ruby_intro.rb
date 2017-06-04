# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum=0
  arr.each { |i| sum+=i } if arr
  sum
end

def max_2_sum arr
  # YOUR CODE HERE
    return 0 if arr.empty?
    arr.length >1 ? arr.max + arr.sort.reverse[1] : arr[0]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr1 = arr
  arr.any? {|i| arr1.any? {|j| i+j == n && arr.index(i) != arr1.index(j) } } if arr
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  /\A[^_aeiou\W\d]/ =~ s.downcase ? true : false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
    
    s =~ /[\D23456789\s]/ || s.empty? ? false : s.to_i(2) % 4 == 0
    #s =~ /[\d^23456789]/ ? s.to_i(2) % 4 == 0 : false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  
  def initialize isbn, price
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end  
  
  def price_as_string
     price_str ='$' + @price.round(2).to_s
    (2-(@price.round(2).to_s.reverse =~ /\./)).times {price_str += '0'}
    price_str
  end

end
