class Fibonacci
  attr_accessor :fibonacci_array, :even_fibonacci
  # initialize the fibonacci_array with the first two fibonacci numbers
  def initialize
  @fibonacci_array = [1,2]
  @even_fibonacci = []
  end

  def gen_fib_num(num1,num2)
    num1 + num2
  end

  # This method generates the following numbers in the fibonacci series and pushes them into the fibonacci_array
  def gen_fib_array(limit)
    # brings out the last number in the current fibonacci_array and takes its index so it can be used
    newest_num = @fibonacci_array.last
    newest_index = @fibonacci_array.index(newest_num)
    # WHhile loop uses the gen_fib_num method to bring in the next number in the fibonacci series and push that into @fibonacci_array
    while newest_num < limit do
      # Generate next fib number from the last two in the array
      got_next_fib = gen_fib_num(@fibonacci_array[newest_index],@fibonacci_array[newest_index-1])
      # Add next fib number to array
      @fibonacci_array << got_next_fib
      # Set the new current fib
      newest_num = got_next_fib
      # Set the new current index of the got_next_fib in the array
      newest_index += 1
    end
    @fibonacci_array
  end

  # This pulls out all of the even numbers from the fibonacci_array and drops them into a new array
  def even_fib_nums(limit)
    gen_fib_array(limit)
    @even_fibonacci = @fibonacci_array.select {|n| n%2 == 0 }
  end

  def sum_even_fibs(limit)
    even_fib_nums(limit)
    sum = @even_fibonacci.inject {|sum, n| sum + n }
    sum
  end
end
