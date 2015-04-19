def multiply(*b)
  result = 1
  b.each {|x| result *= x }
  result
end

puts multiply(3, 4, 5, 5,5 ,5 ,5 ,5)
puts multiply(3, 4)
puts multiply(3, 4, 12, 14)
puts multiply()
