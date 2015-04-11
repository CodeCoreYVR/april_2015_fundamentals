print "What was your mark on the exam? "

mark = gets.chomp.to_i

if mark >= 80
  puts "A"
elsif mark >= 68
  puts "B"
elsif mark >= 55
  puts "C"
elsif mark >= 50
  puts "D"
else
  puts "F"
end
