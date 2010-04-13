require 'PrimeGenerator'

class Factorize
  def initialize
    @primes = PrimeGenerator.new(2000000).get_primes
  end

  def get_prime_factorization(n)
    factors = []
    @primes.each do |p|
      while n % p == 0 do
        factors << p
        n = n/p
      end
      break if n == 1
    end
    factors
  end

  def number_of_factors(n)
    prime_factors = get_prime_factorization(n)
    base_exp = prime_factors.inject({}) {|hash,p| hash[p] ? hash[p] += 1 : hash[p] = 1; hash}
    base_exp.values.inject(1) {|acc,exp| acc *= (exp + 1)}  
  end
end

def triangle(n)
  n * (n + 1) / 2
end

f = Factorize.new
attempt = 1
while true
  t = triangle(attempt)
  factor_count = f.number_of_factors(t)
  if factor_count  > 500
    puts t
    break
  end
  attempt += 1
end