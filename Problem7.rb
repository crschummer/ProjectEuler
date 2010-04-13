require 'PrimeGenerator.rb'
start = Time.now
gen = PrimeGenerator.new(105000)
puts gen.get_primes[10000]
puts Time.now - start