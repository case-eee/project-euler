# require 'prime'

# def all_primes(n)
#   @all = []
#   (1..Math.sqrt(n).floor).each do |num| 
#     if num.prime?
#       @all << num
#     end
#   end
#   @all
# end

# def largest_prime(n)
#   all_primes(n)
#   counter = 0
#   factors = []
#   until counter >= @all.length
#     if n % @all[counter] != 0
#       counter += 1
#     else
#       factors << @all[counter]
#       n /= @all[counter]
#     end
#   end
#   factors << n unless n == 1 
#   factors
# end

# p largest_prime(3628800)



def pfz(n)
 if n==1
    return []
  end

 factors = (2..n).find {|x| n % x == 0}
 [factors] + pfz(n/factors)

end

p pfz(600851475143)












