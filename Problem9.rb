(1..1000).each do |a|
  (a..1000).each do |b|
    c = Math.sqrt(a**2 + b**2)
    if(a + b + c == 1000)
      puts a * b * c
    end
  end
end