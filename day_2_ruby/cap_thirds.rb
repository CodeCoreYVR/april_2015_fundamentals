sentence = "hello codecore fundamentals students"

letters = sentence.split("") # brackets in calling methods with Ruby are options
                             # you can do sentence.split ""
counter = 1

letters.each do |letter|
  if counter % 3 == 0
    puts letter.capitalize
  end
  counter += 1
end

puts ">>>>>>>>>>"

# each_with_index is a method that can be used with arrays. It gives you
# two variabes: one for the current letter you're intersting through, the
# second is the index if the letter
letters.each_with_index do |letter, index|
  # if((index + 1) % 3 == 0)
  #   puts letter.capitalize
  # end
  puts letter.capitalize if((index + 1) % 3 == 0)
end
