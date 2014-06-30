require 'prime'

def all_primes(n)
  @all = []
  (1..Math.sqrt(n).floor).each do |num| 
    if num.prime?
      @all << num
    end
  end
  @all
end

def prime_factorization(n)
  all_primes(n)
  counter = 0
  factors = []
  until counter >= @all.length
    if n % @all[counter] != 0
      counter += 1
    else
      factors << @all[counter]
      n /= @all[counter]
    end
  end
  factors << n unless n == 1 
  factors
end

def each_prime_factorization(n)
  @all_arrays = []
  (2..n).each do |number|
    @all_arrays << prime_factorization(number)
  end
  @all_arrays
end

def final_factors(n)
  each_prime_factorization(n)
  number = 2
  @final_factors_array = []

  until number > @all_arrays.length
    count_of_number = []
    @all_arrays.each do |array|
      count_of_number << array.count(number)
    end
    total_of_number = count_of_number.sort.last
    total_of_number.times do 
      @final_factors_array << number
    end
    number += 1
  end

  @final_factors_array
  p @final_factors_array
end

def smallest_multiple(n)
  final_factors(n)
  @final_factors_array.inject(:*)
end


p smallest_multiple(10)

