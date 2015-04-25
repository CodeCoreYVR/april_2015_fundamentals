load "cat.rb"
load "bird.rb"

b = Bird.new
b.name = "Odo"
c = Cat.new
c.name = "Due"

c.catch(b)
c.eat(b)
