d = Time.utc(1901)
count = 0
while d < Time.utc(2001)
  count += 1 if d.day == 1 and d.wday == 0
  d += 24 * 60 * 60 
end
puts count
