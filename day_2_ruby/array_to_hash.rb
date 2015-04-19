array = ["hello", "hola", "hi", "welcome"]

def array_to_hash(array)
  result = {}
  array.each do |word|
    result[word.to_sym] = word.length
  end
  result
end

print array_to_hash(array)
