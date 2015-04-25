class Cookie

  # the initialize method will be called when you instantiate a new variable:
  # c = Cookie.new(10)
  # it must always be called "initialize"
  def initialize(sugar)
    # defining a variable with an "@" before it, makes it an instance variable
    # which means it's accessible from other instance methods public and private
    # within this class
    @sugar_amount = sugar
    puts @sugar_amount
    puts "making a cookie.."
  end

  def bake_and_eat
    puts @sugar_amount
    puts bake
    eat
  end

  # this method is used to be able to get the value of @sugar_amount
  # from outside. So I can do something like:
  # c = Cookie.new(10)
  # c.sugar_amount
  # this is sometimes called "getter" method
  def sugar_amount
    @sugar_amount
  end

  # this method is used to be able to set the value of @sugar_amount
  # from the outside. So we can do something like:
  # c = Cookie.new(10)
  # c.sugar_amount = 20
  # this sometimes called "setter" method
  def sugar_amount=(new_amount)
    @sugar_amount = new_amount
  end

  attr_reader :flour_amount
  # this is equivalent to doing:
  def flour_amount
    @flour_amount
  end

  attr_writer :flour_amount
  # this is equivalent to doing:
  def flour_amount=(new_amount)
    @flour_amount = new_amount
  end

  attr_accessor :flour_amount
  # this is equivalent to doing:
  attr_reader :flour_amount
  attr_writer :flour_amount

  # This a public instance method for the Cookie class.
  # you should call it on an instace (object). For instance:
  # c = Cookie.new
  # c.eat
  # if you try to call it diretly on the class as in:
  # Cookie.eat
  # you will get an error
  def eat
    "Nom Nom.."
  end

  # this is a class method that should be called directly
  # on the class. For instance:
  # Cookie.info
  # if you try to do something like:
  # c = Cookie.new
  # c.info
  # this will give you an error
  def self.info
    puts "I'm a cookie class"
  end

  private

  # this is private instance method. You can't call it directlty
  # from outside the class but you can call it form other public
  # or private methods defined in this class
  def bake
    "Baking the cookie"
  end

  def put_in_oven
    "Putting in oven..."
  end

end
