LIMIT=4000000

def sum_even_fibonacci_numbers
  base = 0
  first = 1
  second = 2
  sum = 2

  while (first + second) < LIMIT
    base = second
    second += first
    first = base
    sum += second if second.even?
  end

  puts sum
end

sum_even_fibonacci_numbers



