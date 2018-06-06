require 'fibonacci'

describe Fibonacci do
  before(:all) do
    @fn = Fibonacci.new
  end

  it "Should contain add the previous two terms" do
    expect(@fn.gen_fib_num(1,2)).to eq 3
  end
  it "Should have the correct values in the array" do
    expect(@fn.gen_fib_array(89)).to eq [1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
  end

  it "Should extract the even numbers from within the bounds of the upper limit provided" do
    expect(@fn.even_fib_nums(89)).to eq [2,8,34]
  end

  it "Should find the sum of all even fibonacci number up to 4 million" do
    expect(@fn.sum_even_fibs(4000000)).to eq 4613732
  end
end
