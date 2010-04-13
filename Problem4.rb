def main
  puts largest_palindrome
end

def largest_palindrome
  palindromes = []
  (100..999).each do |n1|
    (100..999).each do |n2|
      if palindrome? n1 * n2
        palindromes << n1 * n2
      end
    end
  end
  palindromes.sort.last
end

def palindrome? n
  s = n.to_s
  for i in (0..s.size)
    return false if s[i] != s[-1 - i]
  end
  true
end

main