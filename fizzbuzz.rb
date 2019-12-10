def fizzbuzz(max, hash = {3 => "Fizz", 5 => "Buzz", 7 => "Quux"})
  (1..max).each do |number|
    word = ""
    hash.each { |key, value| word += value if number % key == 0  }
    puts "#{number} #{word}".strip
  end
end

if ARGV[0].to_i > 0
  fizzbuzz ARGV[0].to_i
end
