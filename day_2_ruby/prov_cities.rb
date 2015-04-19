my_hash = { "BC" => ["Vancouver", "Richmond"],  "AB" => ["Edmonton", "Calgary"]}

my_hash.each do |province, cities|
  # join method is applied on an array and it return a string with every element
  # in the string concatenated with other using the parameter provided to the
  # the join method which ", " in this case
  puts "#{province}: #{cities.join(", ")}"
end
