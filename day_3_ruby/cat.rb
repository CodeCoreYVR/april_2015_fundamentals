class Cat
  attr_accessor :name

  def eat(bird)
    puts "#{@name} ate #{bird.name}"
  end

  def catch(bird)
    if rand > 0.5
      puts "#{@name} caught #{bird.name}"
    else
      puts "Ooops. Missed it."
    end
  end

end
