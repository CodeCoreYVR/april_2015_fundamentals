# a = 1
#
# while a <= 10
#   puts "Hello World"
#   break if a == 5
#   a += 1
# end


while true
  puts "Give me a name (type exit when done): "
  name = gets.chomp
  break if name =="exit"
  puts "Hello #{name}"
end
