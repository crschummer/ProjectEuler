def main
  sum = 0
  n1 = 1
  n2 = 1
  cand = 0
  begin
    cand = n1 + n2
    sum += cand if cand % 2 == 0
    n1 = n2
    n2 = cand
  end while cand < 4000000
  puts sum
end

main