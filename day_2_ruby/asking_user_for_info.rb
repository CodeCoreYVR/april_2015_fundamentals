personal_info = {}

print "Give me your first name: "
the_first_name = gets.chomp

personal_info[:first_name] = the_first_name

print "Give me your last name: "
the_last_name = gets.chomp

personal_info[:last_name] = the_last_name

print "Give me your age: "
age = gets.chomp

personal_info[:age] = age

cities = []

while true
  print "give me a city (type 'done' when you're finsihed): "
  city = gets.chomp
  break if city.downcase == "done"
  cities.push(city)
end

personal_info[:cities] = cities

print personal_info
