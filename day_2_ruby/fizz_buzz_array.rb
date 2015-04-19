result = [] # result = Array.new

for number in 1..100
  if number % 3 == 0 && number % 5 == 0
    result << "FIZZBUZZ"
  elsif number % 3 == 0
    result << "FIZZ"
  elsif number % 5 == 0
    result << "BUZZ"
  else
    result << number
  end
end

print result
