require 'rubygems'

puts (1..20).inject(1) { |acc, n| acc.lcm(n) }
