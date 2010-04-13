max_prime = 2000000
primes = (0..max_prime).to_a
primes[0] = primes[1] = nil
(0..max_prime).each do |i|
  if primes[i] != nil
    (i*2).step(max_prime,i) do |j|
      primes[j] = nil
    end
  end
end
primes.compact!
puts primes.inject(0) {|acc,i| acc + i}