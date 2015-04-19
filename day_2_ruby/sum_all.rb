def sum(*numbers)
  result = 0
  numbers.each {|number| result += number }
  result
end

puts sum(1,2,3,4)
puts sum(1,2,3,4, 4,4,5,5,5,5,6,6)
puts sum()
