my_array = [[1,2,3], [1,2,3], [1,2,3], [1,2,3]]

# Nestsed loops solution
# this solution assumes that you know that it's just an array
# with one dimensional arrays inside it
my_array.each do |sub|
  sub.each do |num|
    print num
  end
end

# this solution works no matter how many nested arrays you have inside
my_array.flatten.each do |num|
  print num
end
