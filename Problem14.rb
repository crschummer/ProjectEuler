class Collatz
  def initialize
    @chain_lookup = {1 => 1}
  end

  def chain_length(n)
    return @chain_lookup[n] if @chain_lookup[n]
    @chain_lookup[n] = 1 + (n.even? ? chain_length(n/2) : chain_length(3*n+1))
    @chain_lookup[n]
  end
end

c = Collatz.new
max_length = 0
max_n = 0
(1..1000000).each do |n|
  length = c.chain_length(n)
  if length > max_length
    max_n = n
    max_length = length
  end
end
puts max_n