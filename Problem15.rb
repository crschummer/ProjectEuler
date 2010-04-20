a = []
21.times { a << []}
21.times { a[0] << 1}
(1..20).each do |i|
  a[i][0] = 1
  20.times {a[i] << 0}
end

(1..20).each do |r|
  (1..20).each do |c|
    a[r][c] = a[r-1][c] + a[r][c-1]
  end
end

puts a[20][20]