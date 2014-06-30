def multiple_of_three(n)
  n % 3 == 0
end


def multiple_of_five(n)
  n % 5 == 0
end

def array_of_multiples(n)
  @multiple_array = []
  (1..n-1).each do |number|
    if multiple_of_five(number)
      @multiple_array.push(number)
    elsif multiple_of_three(number)
      @multiple_array << number
    else
      "Not a multiple"
    end
  end
  @multiple_array
end

def sum_of_multiples(n)
  array_of_multiples(n)
  @multiple_array.inject(:+)
end

# p multiple_of_three(9)
# p multiple_of_three(8)
# p multiple_of_five(15)
# p multiple_of_five(60)

p sum_of_multiples(1000)