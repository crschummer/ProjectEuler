require 'PrimeGenerator.rb'

n = 600851475143
gen = PrimeGenerator.new(100000)

gen.get_primes.reverse.each do |prime|
  if n % prime == 0
    puts prime
    break
  end
end

