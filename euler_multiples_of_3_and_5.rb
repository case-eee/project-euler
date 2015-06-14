def multiple_of_three(n)
  n % 3 == 0
end


def multiple_of_five(n)
  n % 5 == 0
end

def array_of_multiples(n)
  (1..n-1).each_with_object(Array.new) do |number, multiples|
    if multiple_of_five(number)
      multiples << number
    elsif multiple_of_three(number)
      multiples << number
    else
      "Not a multiple"
    end
  end
end

def sum_of_multiples(n)
  array_of_multiples(n).inject(:+)
end


p sum_of_multiples(1000) == 233168