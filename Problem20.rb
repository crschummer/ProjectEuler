puts (1..100).inject(1) {|acc, i| acc * i }.to_s.split("").inject(0) {|acc,i| acc + i.to_i }