sum_of_squares = (1..100).map { |e| e * e }.inject(0) { |sum,n| sum + n }
sum = (100 * 101 / 2 )
square_of_sums = sum * sum
puts square_of_sums - sum_of_squares