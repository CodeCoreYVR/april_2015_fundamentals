def multiply(a, b)
  a * b
end

puts multiply(4, 5)
puts multiply 6, 7

# methods have the same naming convention as variables which snake_case

def is_it_large?(number)
  number > 100
end

puts is_it_large?(150)
puts is_it_large?(50)
