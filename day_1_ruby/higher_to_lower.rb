print "Give me the first number: "

number_1 = gets.chomp.to_i

print "Give me the second number: "

number_2 = gets.chomp.to_i

if number_1 > number_2
  number_2.upto(number_1) {|x| puts x }
else
  number_1.upto(number_2) {|x| puts x }
end
