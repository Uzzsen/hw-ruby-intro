# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum=0
  arr.each { |i| sum+=i } unless arr.nil? 
  sum
end

def max_2_sum arr
  # YOUR CODE HERE
  case arr.length
  when 0
    return 0
  when 1
    return arr[0]
  else
    return arr.max + arr.sort.reverse[1]
  end
  #arr.empty? ? sum : arr.max + arr.sort.reverse[1]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr1 = arr
  arr.any? {|i| arr1.any? {|j| i+j == n && arr.index(i) != arr1.index(j) } } unless arr.nil?
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  /\A[^aeiou\W\d_]/ =~ s.downcase ? true : false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
    
    s =~ /[\D23456789\s]/ || s.empty? ? false : s.to_i(2) % 4 == 0
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
 
#    @price.round(2).to_s =~ /\. 
    
    case @price.round(2).to_s.reverse =~ /\./
      when  1
        '$' << @price.round(2).to_s << '0'
      when 2  
        '$' << @price.round(2).to_s 
      else
        '$' << @price.round(2).to_s << '00'
    end
  end
end
