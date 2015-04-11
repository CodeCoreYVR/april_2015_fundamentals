# this loop will make number go from 1 to a 100 inclusive
for number in 1..100
  # we put this condition first because if the number is disbile by both
  # then it's divisble by each which means if we put the others first
  # they will be met before this one is met
  if number % 3 == 0 && number % 5 == 0
    puts "FIZZBUZZ"
  elsif number % 5 == 0
    puts "BUZZ"
  elsif number % 3 == 0
    puts "FIZZ"
  else
    puts number
  end

end
