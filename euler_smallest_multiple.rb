require 'prime'

def all_primes(n)
  (1..Math.sqrt(n).floor).each_with_object(Array.new) do |num, primes|
    primes << num if num.prime?
  end
end

def prime_factorization(n)
  primes = all_primes(n)
  counter = 0
  factors = []
  until counter >= primes.length
    if n % primes[counter] != 0
      counter += 1
    else
      factors << primes[counter]
      n /= primes[counter]
    end
  end
  factors << n unless n == 1
  factors
end

def each_prime_factorization(n)
  (2..n).each_with_object(Array.new) do |number, factors|
    factors << prime_factorization(number)
  end
end

def final_factors(n)
  all_prime_factors = each_prime_factorization(n)
  number = 2
  final_factors_array = []

  until number > all_prime_factors.length
    count_of_number = []
    all_prime_factors.each do |array|
      count_of_number << array.count(number)
    end
    total_of_number = count_of_number.sort.last
    total_of_number.times do
      final_factors_array << number
    end
    number += 1
  end

  final_factors_array
end

def smallest_multiple(n)
  final_factors(n).inject(:*)
end


p smallest_multiple(20) == 232792560

