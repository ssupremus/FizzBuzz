def fizzbuzz(n, d = {3 => "Fizz", 5 => "Buzz", 7 => "Quux"})
  (1..n).each do |key|
    s = ""
    d.each { |k, v| s += v if key % k == 0  }
    puts "#{key} #{s}".strip
  end
end

if ARGV[0].to_i > 0
  fizzbuzz ARGV[0].to_i
end
