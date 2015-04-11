print "Tell me the year of your car: "

year = gets.chomp.to_i

if year > 2015
  puts "Future"
elsif year > 2012
  puts "New"
elsif year > 2005
  puts "Old"
else
  puts "Very Old"
end
