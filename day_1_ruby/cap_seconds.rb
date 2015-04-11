counter = 1
result  = ""

# this will make the loop infite
while true
  print "Give me a word: "
  word = gets.chomp

  # this will stop the loop if the user enters "quit"
  break if word == "quit"

  # this will add an upcased version to the constructed result string
  # if the nubmer is even. Otherwise it will just add the word itself
  if counter.even?
    result += word.upcase
  else
    result += word
  end

  counter += 1
end

puts result
