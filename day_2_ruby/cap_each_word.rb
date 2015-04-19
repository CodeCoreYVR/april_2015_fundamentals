sentence = "hello codecore students"

# splitting the sentence into an array makes it easy to loop
# through each word to do things like capitalizing
array    = sentence.split

# the array will look like
# ["hello", "codecore", "students"]

array.each do |word|
  puts word.capitalize
end
