words = {}
words[1] = "one"
words[2] = "two"
words[3] = "three"
words[4] = "four"
words[5] = "five"
words[6] = "six"
words[7] = "seven"
words[8] = "eight"
words[9] = "nine"
words[10] = "ten"
words[11] = "eleven"
words[12] = "twelve"
words[13] = "thirteen"
words[14] = "fourteen"
words[15] = "fifteen"
words[16] = "sixteen"
words[17] = "seventeen"
words[18] = "eighteen"
words[19] = "nineteen"
words[20] = "twenty"
words[30] = "thirty"
words[40] = "forty"
words[50] = "fifty"
words[60] = "sixty"
words[70] = "seventy"
words[80] = "eighty"
words[90] = "ninety"

def length(n, words)
  strings = []
  thousands = n/1000
  strings << words[thousands] + "thousand" if words[thousands]
  n -= thousands * 1000
  hundreds = n/100
  strings << words[hundreds] + "hundred" if words[hundreds]
  n -= hundreds * 100
  if words[n]
    strings << words[n]          
  else
    tens = n/10
    n -= tens * 10
    strings << words[tens * 10] + words[n] if words[tens * 10]
  end
  as_words = strings.join("and")
  as_words.size
end

puts (1..1000).inject(0) {|acc,i| acc + length(i, words)}
