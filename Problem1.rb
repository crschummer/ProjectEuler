def main
  max = 1000
  sum = sum_multiples(3,max) + sum_multiples(5,max) - sum_multiples(15,max)
  puts sum
end

def sum_multiples(base, max)
  number_of_multiples = (max - 1) / base
  base * number_of_multiples * (number_of_multiples + 1) / 2
end

main