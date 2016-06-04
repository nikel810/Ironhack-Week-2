(1..100).each do |n|
  result = ""
  result << "Fizz" if n % 3 == 0
  result << "Buzz" if n % 5 == 0
  result << "Bang" if n == 1 || n == 100 
  result << "Bang" if n >= 10 && n <= 19
  result = n if result.empty?
  puts result
end