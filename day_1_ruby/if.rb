a = 10

# the code inside the if block will be executed if the condition
# provided is true.
# otherwise it will execute the code inside the "else" block
# this can be written as if a > 50 or if(a < 50)
# in this scenario brackets are optional in Ruby
if(a > 50)
  puts "The number is large"
elsif a > 25
  puts "The number is medium"
else
  puts "The number is small"
end
