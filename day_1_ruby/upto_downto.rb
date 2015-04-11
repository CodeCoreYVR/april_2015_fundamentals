# this will print numbers from 4 to 14
4.upto(14) {|x| puts x  }

# this will print numbers from 16 to 1
16.downto(1) {|n| puts n }

"a".upto("h") {|letter| puts letter }

# this is the same as the one above. Just different syntax.
"a".upto("h") do |letter|
  puts letter
end
