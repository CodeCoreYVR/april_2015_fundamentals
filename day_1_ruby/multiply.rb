print "Give me a number 1: "

# when doing .method this is called method chaining. This means
# the .to_i will be called on the result of .chomp
# The execution will happen from left to right
a = gets.chomp.to_i

print "Give me a number 2: "

b = gets.chomp.to_i

puts a * b
